defmodule StructGenerator do
  @moduledoc """
  Module to generate TypedStruct definitions from JSON schema.
  """

  def generate_structs(schema) do
    Enum.each(schema["definitions"], fn {name, definition} ->
      generate_struct(name, definition)
    end)
  end

  defp generate_struct(name, definition) do
    fields = Enum.map(definition["properties"], fn {field, field_def} ->
      {String.to_atom(field), map_type(field_def["type"])}
    end)

    struct_code = """
    defmodule #{Macro.camelize(name)} do
      use TypedStruct

      typedstruct do
        #{Enum.map(fields, fn {field, type} -> "field :#{field}, #{type}" end) |> Enum.join("\n        ")}
      end
    end
    """

    File.write!("lib/#{name}.ex", struct_code)
  end

  defp map_type("string"), do: ":string"
  defp map_type("integer"), do: ":integer"
  defp map_type("number"), do: ":float"
  defp map_type("boolean"), do: ":boolean"
  defp map_type("array"), do: "list(any())"
  defp map_type("object"), do: "map()"
  defp map_type(_), do: "any()"
end
