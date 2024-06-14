defmodule Fhir.ElementDefinitionAdditional do
  use TypedStruct

  typedstruct do
    field(:_any, Fhir.Element)
    field(:_documentation, Fhir.Element)
    field(:_purpose, Fhir.Element)
    field(:_shortDoco, Fhir.Element)
    field(:any, :boolean)
    field(:documentation, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:purpose, :string)
    field(:shortDoco, :string)
    field(:usage, [Fhir.UsageContext], default: [])
    field(:valueSet, :string)
  end
end
