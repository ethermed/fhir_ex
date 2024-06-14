defmodule Fhir.TestScriptVariable do
  use TypedStruct

  typedstruct do
    field(:_defaultValue, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_expression, Fhir.Element)
    field(:_headerField, Fhir.Element)
    field(:_hint, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_path, Fhir.Element)
    field(:_sourceId, Fhir.Element)
    field(:defaultValue, :string)
    field(:description, :string)
    field(:expression, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:headerField, :string)
    field(:hint, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:path, :string)
    field(:sourceId, :string)
  end
end
