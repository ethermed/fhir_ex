defmodule Fhir.v6().TestScriptVariable do
  use TypedStruct

  typedstruct do
    field(:_defaultValue, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_expression, Fhir.v6().Element)
    field(:_headerField, Fhir.v6().Element)
    field(:_hint, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_path, Fhir.v6().Element)
    field(:_sourceId, Fhir.v6().Element)
    field(:defaultValue, :string)
    field(:description, :string)
    field(:expression, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:headerField, :string)
    field(:hint, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:path, :string)
    field(:sourceId, :string)
  end
end
