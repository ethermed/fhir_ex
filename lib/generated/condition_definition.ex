defmodule Fhir.Generated.ConditionDefinition do
  use TypedStruct

  typedstruct do
    field :_approvalDate, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_definition, [Fhir.Generated.Element], default: []
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_hasBodySite, Fhir.Generated.Element
        field :_hasSeverity, Fhir.Generated.Element
        field :_hasStage, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastReviewDate, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_subtitle, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :approvalDate, :date
        field :author, [Fhir.Generated.ContactDetail], default: []
        field :bodySite, Fhir.Generated.CodeableConcept
        field :code, Fhir.Generated.CodeableConcept
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :definition, [:string], default: []
        field :description, :string
        field :editor, [Fhir.Generated.ContactDetail], default: []
        field :effectivePeriod, Fhir.Generated.Period
        field :endorser, [Fhir.Generated.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :hasBodySite, :boolean
        field :hasSeverity, :boolean
        field :hasStage, :boolean
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :medication, [Fhir.Generated.ConditionDefinitionMedication], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :observation, [Fhir.Generated.ConditionDefinitionObservation], default: []
        field :plan, [Fhir.Generated.ConditionDefinitionPlan], default: []
        field :precondition, [Fhir.Generated.ConditionDefinitionPrecondition], default: []
        field :publisher, :string
        field :purpose, :string
        field :questionnaire, [Fhir.Generated.ConditionDefinitionQuestionnaire], default: []
        field :relatedArtifact, [Fhir.Generated.RelatedArtifact], default: []
        field :resourceType, :string, default: "ConditionDefinition"
        field :reviewer, [Fhir.Generated.ContactDetail], default: []
        field :severity, Fhir.Generated.CodeableConcept
        field :stage, Fhir.Generated.CodeableConcept
        field :status, :string
        field :subtitle, :string
        field :team, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :topic, [Fhir.Generated.CodeableConcept], default: []
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
