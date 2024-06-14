defmodule Mix.Tasks.GenerateStructs do
  use Mix.Task

  @shortdoc "Generate TypedStructs from JSON schema"
  def run(_) do
    schema = SchemaLoader.load_schema("priv/fhir.schema.6.0.json")
    StructGenerator.generate_structs(schema)
  end
end
