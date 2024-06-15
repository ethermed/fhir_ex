defmodule Fhir.Evidence do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_approvalDate, Fhir.Element
        field :_assertion, Fhir.Element
        field :_citeAsMarkdown, Fhir.Element
        field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_lastReviewDate, Fhir.Element
        field :_name, Fhir.Element
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_status, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :approvalDate, :date
        field :assertion, :string
        field :author, [Fhir.ContactDetail], default: []
        field :certainty, [Fhir.EvidenceCertainty], default: []
        field :citeAsMarkdown, :string
        field :citeAsReference, Fhir.Reference
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :editor, [Fhir.ContactDetail], default: []
        field :effectivePeriod, Fhir.Period
        field :endorser, [Fhir.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :note, [Fhir.Annotation], default: []
        field :publisher, :string
        field :purpose, :string
        field :relatedArtifact, [Fhir.RelatedArtifact], default: []
        field :resourceType, :string, default: "Evidence"
        field :reviewer, [Fhir.ContactDetail], default: []
        field :statistic, [Fhir.EvidenceStatistic], default: []
        field :status, :string
        field :studyDesign, [Fhir.CodeableConcept], default: []
        field :synthesisType, Fhir.CodeableConcept
        field :text, Fhir.Narrative
        field :title, :string
        field :topic, [Fhir.CodeableConcept], default: []
        field :url, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :variableDefinition, [Fhir.EvidenceVariableDefinition], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Coding
        field :versionAlgorithmString, :string
  end
end
