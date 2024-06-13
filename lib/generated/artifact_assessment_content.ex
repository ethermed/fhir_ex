defmodule Fhir.Generated.ArtifactAssessmentContent do
  use TypedStruct

  typedstruct do
    field :_freeToShare, Fhir.Generated.Element
        field :_informationType, Fhir.Generated.Element
        field :_path, [Fhir.Generated.Element], default: []
        field :_summary, Fhir.Generated.Element
        field :author, Fhir.Generated.Reference
        field :classifier, [Fhir.Generated.CodeableConcept], default: []
        field :component, [Fhir.Generated.ArtifactAssessmentContent], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :freeToShare, :boolean
        field :id, :string
        field :informationType, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :path, [:string], default: []
        field :quantity, Fhir.Generated.Quantity
        field :relatedArtifact, [Fhir.Generated.RelatedArtifact], default: []
        field :summary, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
