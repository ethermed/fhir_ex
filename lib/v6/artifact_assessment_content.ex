defmodule Fhir.v6().ArtifactAssessmentContent do
  use TypedStruct

  typedstruct do
    field(:_freeToShare, Fhir.v6().Element)
    field(:_informationType, Fhir.v6().Element)
    field(:_path, [Fhir.v6().Element], default: [])
    field(:_summary, Fhir.v6().Element)
    field(:author, Fhir.v6().Reference)
    field(:classifier, [Fhir.v6().CodeableConcept], default: [])
    field(:component, [Fhir.v6().ArtifactAssessmentContent], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:freeToShare, :boolean)
    field(:id, :string)
    field(:informationType, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:path, [:string], default: [])
    field(:quantity, Fhir.v6().Quantity)
    field(:relatedArtifact, [Fhir.v6().RelatedArtifact], default: [])
    field(:summary, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
