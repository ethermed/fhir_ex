defmodule Fhir.ActivityDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_approvalDate, Fhir.Element
        field :_asNeededBoolean, Fhir.Element
        field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_doNotPerform, Fhir.Element
        field :_experimental, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_intent, Fhir.Element
        field :_kind, Fhir.Element
        field :_language, Fhir.Element
        field :_lastReviewDate, Fhir.Element
        field :_name, Fhir.Element
        field :_priority, Fhir.Element
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_status, Fhir.Element
        field :_subjectCanonical, Fhir.Element
        field :_subtitle, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_usage, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :approvalDate, :date
        field :asNeededBoolean, :boolean
        field :asNeededCodeableConcept, Fhir.CodeableConcept
        field :author, [Fhir.ContactDetail], default: []
        field :bodySite, [Fhir.CodeableConcept], default: []
        field :code, Fhir.CodeableConcept
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :doNotPerform, :boolean
        field :dosage, [Fhir.Dosage], default: []
        field :dynamicValue, [Fhir.ActivityDefinitionDynamicValue], default: []
        field :editor, [Fhir.ContactDetail], default: []
        field :effectivePeriod, Fhir.Period
        field :endorser, [Fhir.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :intent, :string
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :kind, :string
        field :language, :string
        field :lastReviewDate, :date
        field :library, [:string], default: []
        field :location, Fhir.CodeableReference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :observationRequirement, [:string], default: []
        field :observationResultRequirement, [:string], default: []
        field :participant, [Fhir.ActivityDefinitionParticipant], default: []
        field :priority, :string
        field :productCodeableConcept, Fhir.CodeableConcept
        field :productReference, Fhir.Reference
        field :profile, :string
        field :publisher, :string
        field :purpose, :string
        field :quantity, Fhir.Quantity
        field :relatedArtifact, [Fhir.RelatedArtifact], default: []
        field :resourceType, :string, default: "ActivityDefinition"
        field :reviewer, [Fhir.ContactDetail], default: []
        field :specimenRequirement, [:string], default: []
        field :status, :string
        field :subjectCanonical, :string
        field :subjectCodeableConcept, Fhir.CodeableConcept
        field :subjectReference, Fhir.Reference
        field :subtitle, :string
        field :text, Fhir.Narrative
        field :timingAge, Fhir.Age
        field :timingDuration, Fhir.Duration
        field :timingRange, Fhir.Range
        field :timingTiming, Fhir.Timing
        field :title, :string
        field :topic, [Fhir.CodeableConcept], default: []
        field :transform, :string
        field :url, :string
        field :usage, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Coding
        field :versionAlgorithmString, :string
  end
end
