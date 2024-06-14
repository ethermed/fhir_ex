defmodule Fhir.v6().DeviceDefinitionConformsTo do
  use TypedStruct

  typedstruct do
    field(:_version, [Fhir.v6().Element], default: [])
    field(:category, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:source, [Fhir.v6().RelatedArtifact], default: [])
    field(:specification, Fhir.v6().CodeableConcept)
    field(:version, [:string], default: [])
  end
end
