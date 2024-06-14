defmodule Fhir.v6().ElementDefinitionAdditional do
  use TypedStruct

  typedstruct do
    field(:_any, Fhir.v6().Element)
    field(:_documentation, Fhir.v6().Element)
    field(:_purpose, Fhir.v6().Element)
    field(:_shortDoco, Fhir.v6().Element)
    field(:any, :boolean)
    field(:documentation, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:purpose, :string)
    field(:shortDoco, :string)
    field(:usage, [Fhir.v6().UsageContext], default: [])
    field(:valueSet, :string)
  end
end
