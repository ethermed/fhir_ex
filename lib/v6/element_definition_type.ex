defmodule Fhir.v6().ElementDefinitionType do
  use TypedStruct

  typedstruct do
    field(:_aggregation, [Fhir.v6().Element], default: [])
    field(:_code, Fhir.v6().Element)
    field(:_versioning, Fhir.v6().Element)
    field(:aggregation, any())
    field(:code, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:profile, [:string], default: [])
    field(:targetProfile, [:string], default: [])
    field(:versioning, any())
  end
end
