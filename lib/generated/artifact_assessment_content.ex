defmodule Fhir.ArtifactAssessmentContent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_freeToShare, Fhir.Element
        field :_informationType, Fhir.Element
        field :_path, [Fhir.Element], default: []
        field :_summary, Fhir.Element
        field :author, Fhir.Reference
        field :classifier, [Fhir.CodeableConcept], default: []
        field :component, [Fhir.ArtifactAssessmentContent], default: []
        field :extension, [Fhir.Extension], default: []
        field :freeToShare, :boolean
        field :id, :string
        field :informationType, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :path, [:string], default: []
        field :quantity, Fhir.Quantity
        field :relatedArtifact, [Fhir.RelatedArtifact], default: []
        field :summary, :string
        field :type, Fhir.CodeableConcept
  end
end
