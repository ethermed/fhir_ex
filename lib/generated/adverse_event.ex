defmodule Fhir.Generated.AdverseEvent do
  use TypedStruct

  typedstruct do
    field :_actuality, Fhir.Generated.Element
        field :_detected, Fhir.Generated.Element
        field :_expectedInResearchStudy, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_recordedDate, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :actuality, :string
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :contributingFactor, [Fhir.Generated.AdverseEventContributingFactor], default: []
        field :detected, :datetime
        field :encounter, Fhir.Generated.Reference
        field :expectedInResearchStudy, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :mitigatingAction, [Fhir.Generated.AdverseEventMitigatingAction], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :occurrenceTiming, Fhir.Generated.Timing
        field :outcome, [Fhir.Generated.CodeableConcept], default: []
        field :participant, [Fhir.Generated.AdverseEventParticipant], default: []
        field :preventiveAction, [Fhir.Generated.AdverseEventPreventiveAction], default: []
        field :recordedDate, :datetime
        field :recorder, Fhir.Generated.Reference
        field :resourceType, :string, default: "AdverseEvent"
        field :resultingEffect, [Fhir.Generated.Reference], default: []
        field :seriousness, Fhir.Generated.CodeableConcept
        field :status, :string
        field :study, [Fhir.Generated.Reference], default: []
        field :subject, Fhir.Generated.Reference
        field :supportingInfo, [Fhir.Generated.AdverseEventSupportingInfo], default: []
        field :suspectEntity, [Fhir.Generated.AdverseEventSuspectEntity], default: []
        field :text, Fhir.Generated.Narrative
  end
end
