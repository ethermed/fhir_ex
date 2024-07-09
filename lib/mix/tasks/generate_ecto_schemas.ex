# defmodule Mix.Tasks.GenerateEctoSchemas do
#   use Mix.Task
#   require Logger

#   @shortdoc "Generates Ecto schemas from a JSON schema file"

#   def run([input_file]) do
#     {:ok, schema_json} = File.read(input_file)
#     schema = Jason.decode!(schema_json)

#     definitions = schema["definitions"]
#     |> Enum.filter(fn
#       {name, _} when name in ~w(Base ElementDefinition) -> false
#       {_name, definition} -> Map.has_key?(definition, "properties")
#     end)

#     Enum.each(definitions, fn {name, definition} ->
#       IO.inspect(name)
#       module_name = module_name(name)
#       file_content = generate_module(module_name, definition)
#       file_path = "lib/schemas/#{Macro.underscore(name)}.ex"
#       File.write!(file_path, file_content)
#       Logger.info("Generated #{file_path}")
#     end)
#   end

#   defp module_name(name) do
#     name
#     |> Macro.camelize()
#     |> (fn n -> "Elixir.Schemas.#{n}" end).()
#   end

#   defp generate_module(module_name, definition) do
#     fields = get_fields(definition)
#     embeds = get_embeds(definition)

#     """
#     defmodule #{module_name} do
#       use Ecto.Schema
#       import Ecto.Changeset
#       @derive Jason.Encoder

#       embedded_schema do
#         #{fields}
#         #{embeds}
#       end

#       #{generate_typespecs(fields, embeds)}

#       def changeset(schema, params) do
#         schema
#         |> cast(params, #{get_field_names(fields)})
#         #{generate_cast_embeds(embeds)}
#         #{generate_validations(definition)}
#       end
#     end
#     """
#   end

#   defp get_fields(definition) do
#     definition["properties"]
#     |> Enum.map(fn {name, prop} ->
#       type = get_type(prop)
#       "field :#{name}, #{type}"
#     end)
#     |> Enum.join("\n    ")
#   end

#   defp get_embeds(definition) do
#     definition["properties"]
#     |> Enum.filter(fn {_, prop} -> prop["$ref"] end)
#     |> Enum.map(fn {name, prop} ->
#       ref = prop["$ref"]
#       module = ref |> String.split("/") |> List.last() |> module_name()
#       if prop["type"] == "array" do
#         "embeds_many :#{name}, #{module}"
#       else
#         "embeds_one :#{name}, #{module}"
#       end
#     end)
#     |> Enum.join("\n    ")
#   end

#   defp get_type(%{"type" => "string"}), do: ":string"
#   defp get_type(%{"type" => "integer"}), do: ":integer"
#   defp get_type(%{"type" => "number"}), do: ":float"
#   defp get_type(%{"type" => "boolean"}), do: ":boolean"
#   defp map_type(_, %{"enum" => enum_values}, _) do
#     "Ecto.Enum, values: #{inspect(Enum.map(enum_values, &String.to_atom/1))}"
#   end

#   defp generate_typespecs(fields, embeds) do
#     field_specs = fields |> String.split("\n") |> Enum.map(&String.trim/1)
#     embed_specs = embeds |> String.split("\n") |> Enum.map(&String.trim/1)

#     # specs = field_specs ++ embed_specs
#     specs = field_specs
#     |> IO.inspect()
#     |> Enum.map(fn field ->
#       IO.inspect(field, label: "parsing")
#       [_, name, type] = Regex.run(~r/[field|embeds_one|embeds_many] :(\w+), (.+)/, field)
#       "#{name}: #{type_to_typespec(type)}"
#     end)
#     |> Enum.join(", ")

#     """
#     @type t :: %__MODULE__{
#       #{specs}
#     }
#     """
#   end

#   defp type_to_typespec(":string"), do: "String.t()"
#   defp type_to_typespec(":integer"), do: "integer()"
#   defp type_to_typespec(":float"), do: "float()"
#   defp type_to_typespec(":boolean"), do: "boolean()"
#   defp type_to_typespec(":map"), do: "map()"
#   defp type_to_typespec("{:array, :string}"), do: "[String.t()]"
#   defp type_to_typespec("<<:embeds_one  module, _}"), do: quote do: unquote(module).t()
#   defp type_to_typespec({:embeds_many, module, _}), do: quote do: list(unquote(module).t())
#   defp get_field_names(fields) do
#     fields
#     |> String.split("\n")
#     |> Enum.map(fn field ->
#       [_, name, _] = Regex.run(~r/field :(\w+), (.+)/, field)
#       ":#{name}"
#     end)
#     |> Enum.join(", ")
#   end

#   defp generate_cast_embeds(embeds) do
#     embeds
#     |> String.split("\n")
#     |> Enum.map(fn embed ->
#       case Regex.run(~r/(embeds_\w+) :(\w+), (.+)/, embed) do
#         [_, "embeds_one", name, module] ->
#           "|> cast_embed(:#{name}, with: &#{module}.changeset/2)"
#         [_, "embeds_many", name, module] ->
#           "|> cast_embed(:#{name}, with: &#{module}.changeset/2)"
#         _ -> ""
#       end
#     end)
#     |> Enum.join("\n    ")
#   end

#   defp generate_validations(definition) do
#     definition["properties"]
#     |> Enum.map(fn {name, prop} ->
#       cond do
#         prop["minLength"] ->
#           "|> validate_length(:#{name}, min: #{prop["minLength"]})"
#         prop["maxLength"] ->
#           "|> validate_length(:#{name}, max: #{prop["maxLength"]})"
#         prop["pattern"] ->
#           "|> validate_format(:#{name}, ~r/#{prop["pattern"]}/)"
#         prop["minimum"] ->
#           "|> validate_number(:#{name}, greater_than_or_equal_to: #{prop["minimum"]})"
#         prop["maximum"] ->
#           "|> validate_number(:#{name}, less_than_or_equal_to: #{prop["maximum"]})"
#         true -> ""
#       end
#     end)
#     |> Enum.reject(&(&1 == ""))
#     |> Enum.join("\n    ")
#   end
# end
