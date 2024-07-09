defmodule StructGenerator do
  @moduledoc """
  Module to generate TypedStruct definitions from JSON schema.
  Generates Elixir modules with:
  - Ecto schema
  - Changesets for data validation
  - Constructors (new/1, new!/1) to create structs
  - Typespecs for the data being returned
  - Moduledocs from the JSON schema
  """

  require Logger

  @namespace "Fhir"

  # Main function to generate structs from JSON schema
  def generate_structs(schema, filter_list) do
    all_definitions =
      schema["definitions"]
      |> Enum.reject(fn {name, _} -> name in filter_list end)
      |> Enum.into(%{})

    parsed_definitions = filter_and_parse_definitions(all_definitions)

    Enum.each(parsed_definitions, fn {name, definition} ->
      generate_and_write_struct(name, definition, all_definitions)
    end)
  end

  # Helper functions for filtering and parsing definitions
  defp filter_and_parse_definitions(definitions) do
    definitions
    |> Enum.filter(&valid_definition?(&1))
    |> Enum.into(%{})
  end

  defp valid_definition?({_name, definition}) do
    true
    Map.has_key?(definition, "properties")
  end

  # Generate and write struct to file
  defp generate_and_write_struct(name, definition, all_definitions) do
    file_content = generate_struct(name, definition, all_definitions)
    file_name = snake_case(name)
    File.write!("lib/generated/#{file_name}.ex", file_content)
    Logger.info("Generated #{file_name}")
  end

  # Main function to generate struct content
  defp generate_struct(name, definition, all_defs) do
    module_name = "#{@namespace}.#{elixir_name(name)}"
    IO.puts("#{module_name} =====================")
    module_doc = Map.get(definition, "description")
    properties = Map.get(definition, "properties")

    fields = get_fields(properties, all_defs)
    embeds = get_embeds(properties, all_defs)
    cast_embeds = generate_cast_embeds(embeds)
    validations = generate_validations(properties, all_defs)

    generate_module_content(module_name, module_doc, fields, embeds, cast_embeds, validations)
  end

  # Generate the actual module content
  defp generate_module_content(module_name, module_doc, fields, embeds, cast_embeds, validations) do
    """
    defmodule #{module_name} do
      @moduledoc \"\"\"
      #{module_doc}
      \"\"\"
      use Ecto.Schema
      import Ecto.Changeset
      @derive Jason.Encoder

      @primary_key false
      embedded_schema do
        #{fields}
        #{embeds}
      end

      #{generate_typespecs(fields, embeds)}

      def changeset(schema, params) do
        schema
        |> cast(params, #{get_field_names(fields)})
        #{cast_embeds}
        #{validations}
      end

      def new(params) do
        %__MODULE__{}
        |> changeset(params)
        |> apply_action(:new)
      end

      def new!(params) do
        case new(params) do
          {:ok, val} -> val
          {:error, cs} -> raise "Invalid #\{__ENV__.module\}.new!(): #\{inspect(cs.errors)\}"
        end
      end
    end
    """
  end

  # Helper functions for generating fields and embeds
  def get_fields(properties, all_defs) do
    properties
    # |> reject_underscores()
    |> Enum.reject(&references_type?/1)
    |> Enum.map(fn {field_name, field_meta} ->
      IO.inspect(field_meta, label: "\t\t #{field_name}")
      field_type = get_field_type(field_meta, all_defs)
      "field :#{field_name}, #{field_type}"
    end)
    |> Enum.join("\n    ")
  end

  def get_embeds(properties, all_defs) do
    properties
    # |> reject_underscores()
    |> Enum.filter(&references_type?/1)
    |> Enum.map(fn {field_name, field_meta} ->
      IO.inspect(field_meta, label: "\t\t #{field_name}")
      embed = if field_meta["type"] == "array", do: "embeds_many", else: "embeds_one"
      field_type = get_embedded_type(field_meta, all_defs)

      # case field_type do
      #   {:multi_resource, resource_types} ->
      #     "#{embed} :#{field_name}, #{@namespace}.Resource, polymorphic_type: :resourceType, types: #{inspect(resource_types)}"
      #   _ ->
      #     "#{embed} :#{field_name}, #{field_type}"
      # end

      "#{embed} :#{field_name}, #{field_type}"
    end)
    |> Enum.join("\n    ")
  end

  # Helper functions for type checking and conversion
  # defp reject_underscores(properties) do
  #   Enum.reject(properties, fn {field_name, _} -> String.starts_with?(field_name, "_") end)
  # end

  @doc """
  Checks if a property is a reference type.
  """
  def references_type?({_, field_meta}) do
    cond do
      match?(%{"items" => %{"$ref" => <<"#/definitions/", ref_type::binary>>}}, field_meta) ->
        ref_type =
          field_meta["items"]["$ref"]
          |> String.replace_prefix("#/definitions/", "")

        is_root_data_type(ref_type)

      match?(%{"$ref" => <<"#/definitions/", _ref_type::binary>>}, field_meta) ->
        ref_type =
          field_meta["$ref"]
          |> String.replace_prefix("#/definitions/", "")

        is_root_data_type(ref_type)

      match?(
        %{"type" => "array", "items" => %{"$ref" => <<"#/definitions/", _::binary>>}},
        field_meta
      ) ->
        true

      true ->
        false
    end
  end

  defp get_field_type(%{"type" => type}, _) when type in ["string", "integer", "boolean"],
    do: ":#{type}"

  defp get_field_type(%{"type" => "unsignedInt"}, _), do: ":integer"
  defp get_field_type(%{"type" => "number"}, _), do: ":float"
  defp get_field_type(%{"const" => value}, _), do: ":string, default: \"#{value}\""

  defp get_field_type(%{"$ref" => <<"#/definitions/", field_type::binary>>}, all_defs) do
    Map.get(all_defs, field_type)
    |> get_field_type(all_defs)
  end

  defp get_field_type(%{"enum" => values}, _all_defs) do
    atom_values = Enum.map(values, &String.to_atom/1)
    "Ecto.Enum, values: #{inspect(atom_values)}"
  end

  defp get_field_type(%{"type" => "array", "items" => items}, _all_defs)
       when is_map_key(items, "enum") do
    "{:array, :string}"
  end

  defp get_field_type(_, _), do: ":string"

  defp get_embedded_type(%{"$ref" => type}, all_defs), do: get_embedded_type(type, all_defs)

  defp get_embedded_type(%{"items" => %{"$ref" => type}}, all_defs),
    do: get_embedded_type(type, all_defs)

  # defp get_embedded_type(%{"items" => %{"oneOf" => types}}, _all_defs) do
  #   resource_types = Enum.map(types, fn %{"$ref" => ref} ->
  #     ref
  #     |> String.replace_prefix("#/definitions/", "")
  #     |> elixir_name()
  #   end)
  #   {:multi_resource, resource_types}
  # end

  defp get_embedded_type(<<"#/definitions/", embed_type::binary>>, all_defs) do
    if is_root_data_type(embed_type) do
      "#{@namespace}.#{elixir_name(embed_type)}"
    else
      IO.inspect("\t\t\t#{embed_type}")
      get_field_type(%{"$ref" => "#/definitions/#{embed_type}"}, all_defs)
    end
  end

  # Generate typespecs for the struct
  def generate_typespecs(fields, embeds) do
    specs =
      (fields <> "\n" <> embeds)
      |> String.split("\n")
      |> Enum.map(&String.trim/1)
      |> Enum.map(&generate_spec_line/1)
      |> Enum.join(",\n")

    """
    @type t :: %__MODULE__{
    #{specs}
        }
    """
  end

  defp generate_spec_line(field) do
    %{"field_type" => field_type, "field_name" => name, "type" => type} =
      Regex.named_captures(
        ~r/(?<field_type>(field|embeds_one|embeds_many)) :(?<field_name>\w+), (?<type>.+)/,
        field
      )

    case field_type do
      "field" -> "        #{name}: #{type_to_typespec(type)}"
      "embeds_one" -> "        #{name}: #{type}.t()"
      "embeds_many" -> "        #{name}: [#{type}.t()]"
    end
  end

  defp type_to_typespec(<<":string", _rest::binary>>), do: "String.t()"
  defp type_to_typespec(<<":integer", _rest::binary>>), do: "integer()"
  defp type_to_typespec(<<":float", _rest::binary>>), do: "float()"
  defp type_to_typespec(<<":boolean", _rest::binary>>), do: "boolean()"
  defp type_to_typespec(<<":map", _rest::binary>>), do: "map()"
  defp type_to_typespec("{:array, :string}"), do: "[String.t()]"
  defp type_to_typespec(<<"Ecto.Enum", _rest::binary>>), do: "String.t()"

  # Helper functions for generating changeset and validations
  def get_field_names(fields) do
    embeds =
      fields
      |> String.split("\n")
      |> Enum.map(fn field ->
        [_, name, _] = Regex.run(~r/field :(\w+), (.+)/, field)
        ":#{name}"
      end)
      |> Enum.join(", ")

    "[#{embeds}]"
  end

  def generate_cast_embeds(embeds) do
    embeds
    |> String.split("\n")
    |> Enum.map(&generate_cast_embed_line/1)
    |> Enum.reject(&(&1 == ""))
    |> Enum.join("\n    ")
  end

  @doc """
  Generates a single cast_embed line, handling multi-resource embeds.
  """
  @spec generate_cast_embed_line(String.t()) :: String.t()
  defp generate_cast_embed_line(embed) do
    case Regex.run(
           ~r/(embeds_\w+) :(\w+), #{@namespace}\.Resource, polymorphic_type: :resourceType, types: \[(.+)\]/,
           embed
         ) do
      [_, embed_type, name, _types] when embed_type in ["embeds_one", "embeds_many"] ->
        "|> cast_embed(:#{name}, with: &#{@namespace}.Resource.changeset/2)"

      _ ->
        case Regex.run(~r/(embeds_\w+) :(\w+), (.+)/, embed) do
          [_, embed_type, name, module] when embed_type in ["embeds_one", "embeds_many"] ->
            "|> cast_embed(:#{name}, with: &#{module}.changeset/2)"

          _ ->
            ""
        end
    end
  end

  def generate_validations(fields, all_defs) do
    fields
    # |> reject_underscores()
    |> Enum.reject(&references_type?/1)
    |> Enum.filter(fn {_, field_meta} ->
      case field_meta["$ref"] do
        <<"#/definitions/", _rest::binary>> -> true
        _ -> false
      end
    end)
    |> Enum.map(fn {name, props} ->
      <<"#/definitions/", field_type::binary>> = props["$ref"]
      {name, all_defs[field_type]}
    end)
    |> Enum.map(&generate_validation_line/1)
    |> Enum.reject(&(&1 == ""))
    |> Enum.join("\n    ")
  end

  defp generate_validation_line({name, prop}) do
    cond do
      prop["minLength"] ->
        "|> validate_length(:#{name}, min: #{prop["minLength"]})"

      prop["maxLength"] ->
        "|> validate_length(:#{name}, max: #{prop["maxLength"]})"

      prop["pattern"] ->
        case prop["pattern"] do
          "^true|false$" ->
            "|> validate_inclusion(:#{name}, [true, false])"

          "^[1-9][0-9]*$" ->
            ""

          "^-?(0|[1-9][0-9]{0,17})(\\.[0-9]{1,17})?([eE][+-]?[0-9]{1,9}})?$" ->
            ""

          _ ->
            "|> validate_format(:#{name}, ~r/#{prop["pattern"]}/)"
        end

      prop["minimum"] ->
        "|> validate_number(:#{name}, greater_than_or_equal_to: #{prop["minimum"]})"

      prop["maximum"] ->
        "|> validate_number(:#{name}, less_than_or_equal_to: #{prop["maximum"]})"

      true ->
        ""
    end
  end

  # Helper functions for naming and casing
  defp is_root_data_type(input), do: is_uppercase(input)
  defp is_uppercase(<<char, _rest::binary>>) when char in ?A..?Z, do: true
  defp is_uppercase(_), do: false

  defp snake_case(name) do
    name
    |> Macro.underscore()
    |> String.replace(~r/[A-Z]/, fn match -> "_" <> String.downcase(match) end)
    |> String.trim_leading("_")
    |> String.replace("__", "_")
  end

  defp elixir_name(name) do
    name
    |> Macro.camelize()
    |> String.replace("_", "")
  end
end
