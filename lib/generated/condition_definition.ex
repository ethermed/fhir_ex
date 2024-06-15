defmodule Fhir.ConditionDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_approvalDate, Fhir.Element
        field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_definition, [Fhir.Element], default: []
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_hasBodySite, Fhir.Element
        field :_hasSeverity, Fhir.Element
        field :_hasStage, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_lastReviewDate, Fhir.Element
        field :_name, Fhir.Element
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_status, Fhir.Element
        field :_subtitle, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :approvalDate, :date
        field :author, [Fhir.ContactDetail], default: []
        field :bodySite, Fhir.CodeableConcept
        field :code, Fhir.CodeableConcept
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :definition, [:string], default: []
        field :description, :string
        field :editor, [Fhir.ContactDetail], default: []
        field :effectivePeriod, Fhir.Period
        field :endorser, [Fhir.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :hasBodySite, :boolean
        field :hasSeverity, :boolean
        field :hasStage, :boolean
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :medication, [Fhir.ConditionDefinitionMedication], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :observation, [Fhir.ConditionDefinitionObservation], default: []
        field :plan, [Fhir.ConditionDefinitionPlan], default: []
        field :precondition, [Fhir.ConditionDefinitionPrecondition], default: []
        field :publisher, :string
        field :purpose, :string
        field :questionnaire, [Fhir.ConditionDefinitionQuestionnaire], default: []
        field :relatedArtifact, [Fhir.RelatedArtifact], default: []
        field :resourceType, :string, default: "ConditionDefinition"
        field :reviewer, [Fhir.ContactDetail], default: []
        field :severity, Fhir.CodeableConcept
        field :stage, Fhir.CodeableConcept
        field :status, :string
        field :subtitle, :string
        field :team, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
        field :title, :string
        field :topic, [Fhir.CodeableConcept], default: []
        field :url, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Coding
        field :versionAlgorithmString, :string
  end
end
