defmodule StructGenerator do
  @moduledoc """
  Module to generate TypedStruct definitions from JSON schema.
  """

  @namespace "Fhir.Generated"

  def generate_structs(schema) do
    schema["definitions"]
    |> Enum.filter(fn
      {name, _} when name in ~w(Base ElementDefinition) -> false
      {_name, definition} -> Map.has_key?(definition, "properties")
    end)
    |> Enum.each(fn {name, definition} ->
      generate_struct(name, definition, schema["definitions"])
    end)
  end

  defp generate_struct(name, definition, all_defs) do
    fields = definition["properties"]
      |> Enum.sort_by(fn {k, _v} -> k end, :asc)
      |> Enum.map(fn {field, field_def} ->
        {String.to_atom(field), map_type(field, field_def, all_defs)}
      end)

    struct_code = """
    defmodule #{@namespace}.#{elixir_name(name)} do
      use TypedStruct

      typedstruct do
        #{Enum.map(fields, fn {field, type} -> "field :#{field}, #{type}" end) |> Enum.join("\n        ")}
      end
    end
    """

    file_name = snake_case(name)
    File.write!("lib/generated/#{file_name}.ex", struct_code)
  end

  # Mapping a reference to a list of another type
  def map_type(name, def, all_defs \\ %{})
  def map_type(_, %{"items" => %{"$ref" => ref}}, all_defs) do
    case match_ref(ref, all_defs) do
      {:ok, type} -> "[#{type}], default: []"
      {:error, reason} -> raise ArgumentError, reason
    end
  end

  # Mapping a reference to another type
  def map_type(_, %{"$ref" => ref}, all_defs) do
    case match_ref(ref, all_defs) do
      {:ok, type} -> type
      {:error, reason} -> raise ArgumentError, reason
    end
  end

  # custom determinations by name - some things are stored as string, with complicated regexes, which are not needed. This is to handle those.
  def map_type("date", _, _), do: ":date"
  def map_type("dateTime", _, _), do: ":datetime"
  def map_type("decimal", _, _), do: ":decimal"
  def map_type("instant", _, _), do: ":timestamp"
  def map_type("integer64", _, _), do: ":integer"
  def map_type("xhtml", _, _), do: ":string"
  # I can't auto-generate the ids unless I make it so that them being in a list is ok
  # def map_type("id", _, _), do: ":string, default_apply: {Ecto.UUID, :generate, []}"
  def map_type("id", _, _), do: ":string"
  # base types - Regardless of the name, if they specify a type, just use it.
  def map_type(_, %{"type" => "string"}, _), do: ":string"
  def map_type(_, %{"type" => "integer"}, _), do: ":integer"
  def map_type(_, %{"type" => "number"}, _), do: ":float"
  def map_type(_, %{"type" => "boolean"}, _), do: ":boolean"

  # constants are currently always interpretted as strings. Not sure if that's a good idea of not
  def map_type(_, %{"const" => value}, _) do
    ":string, default: \"#{value}\""
  end

  # fallback
  def map_type(_, _, _), do: "any()"

  def match_ref(input, all_defs) do
    case input do
      <<"#/definitions/", rest::binary>> ->
        case is_root_data_type(rest) do
          true ->
            {:ok, "#{@namespace}.#{elixir_name(rest)}"}
          false ->
            {:ok, map_type(rest, all_defs[rest], all_defs)}
        end
      _ ->
        {:error, :invalid_ref}
    end
  end
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
