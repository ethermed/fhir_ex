defmodule Fhir.v6().DeviceDefinitionGuideline do
  use TypedStruct

  typedstruct do
    field(:_intendedUse, Fhir.v6().Element)
    field(:_usageInstruction, Fhir.v6().Element)
    field(:contraindication, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:indication, [Fhir.v6().CodeableConcept], default: [])
    field(:intendedUse, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:relatedArtifact, [Fhir.v6().RelatedArtifact], default: [])
    field(:usageInstruction, :string)
    field(:useContext, [Fhir.v6().UsageContext], default: [])
    field(:warning, [Fhir.v6().CodeableConcept], default: [])
  end
end
