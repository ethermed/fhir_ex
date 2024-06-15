defmodule Fhir.ArtifactAssessment do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_approvalDate, Fhir.Element
        field :_artifactCanonical, Fhir.Element
        field :_artifactUri, Fhir.Element
        field :_citeAsMarkdown, Fhir.Element
        field :_copyright, Fhir.Element
        field :_date, Fhir.Element
        field :_disposition, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_lastReviewDate, Fhir.Element
        field :_title, Fhir.Element
        field :_workflowStatus, Fhir.Element
        field :approvalDate, :date
        field :artifactCanonical, :string
        field :artifactReference, Fhir.Reference
        field :artifactUri, :string
        field :citeAsMarkdown, :string
        field :citeAsReference, Fhir.Reference
        field :contained, [Fhir.ResourceList], default: []
        field :content, [Fhir.ArtifactAssessmentContent], default: []
        field :copyright, :string
        field :date, :datetime
        field :disposition, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :lastReviewDate, :date
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :resourceType, :string, default: "ArtifactAssessment"
        field :text, Fhir.Narrative
        field :title, :string
        field :workflowStatus, :string
  end
end
