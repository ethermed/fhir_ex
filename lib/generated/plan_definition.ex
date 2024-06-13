defmodule Fhir.Generated.PlanDefinition do
  use TypedStruct

  typedstruct do
    field :_approvalDate, Fhir.Generated.Element
        field :_asNeededBoolean, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastReviewDate, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_subjectCanonical, Fhir.Generated.Element
        field :_subtitle, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_usage, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :action, [Fhir.Generated.PlanDefinitionAction], default: []
        field :actor, [Fhir.Generated.PlanDefinitionActor], default: []
        field :approvalDate, :date
        field :asNeededBoolean, :boolean
        field :asNeededCodeableConcept, Fhir.Generated.CodeableConcept
        field :author, [Fhir.Generated.ContactDetail], default: []
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :editor, [Fhir.Generated.ContactDetail], default: []
        field :effectivePeriod, Fhir.Generated.Period
        field :endorser, [Fhir.Generated.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :goal, [Fhir.Generated.PlanDefinitionGoal], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :library, [:string], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :publisher, :string
        field :purpose, :string
        field :relatedArtifact, [Fhir.Generated.RelatedArtifact], default: []
        field :resourceType, :string, default: "PlanDefinition"
        field :reviewer, [Fhir.Generated.ContactDetail], default: []
        field :status, :string
        field :subjectCanonical, :string
        field :subjectCodeableConcept, Fhir.Generated.CodeableConcept
        field :subjectReference, Fhir.Generated.Reference
        field :subtitle, :string
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :topic, [Fhir.Generated.CodeableConcept], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :url, :string
        field :usage, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
