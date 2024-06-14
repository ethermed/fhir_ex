defmodule Fhir.v6().DeviceDefinitionClassification do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:justification, [Fhir.v6().RelatedArtifact], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
