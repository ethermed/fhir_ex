defmodule Fhir.Generated.ArtifactAssessment do
  use TypedStruct

  typedstruct do
    field :_approvalDate, Fhir.Generated.Element
        field :_artifactCanonical, Fhir.Generated.Element
        field :_artifactUri, Fhir.Generated.Element
        field :_citeAsMarkdown, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_disposition, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastReviewDate, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_workflowStatus, Fhir.Generated.Element
        field :approvalDate, :date
        field :artifactCanonical, :string
        field :artifactReference, Fhir.Generated.Reference
        field :artifactUri, :string
        field :citeAsMarkdown, :string
        field :citeAsReference, Fhir.Generated.Reference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :content, [Fhir.Generated.ArtifactAssessmentContent], default: []
        field :copyright, :string
        field :date, :datetime
        field :disposition, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :lastReviewDate, :date
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resourceType, :string, default: "ArtifactAssessment"
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :workflowStatus, :string
  end
end
