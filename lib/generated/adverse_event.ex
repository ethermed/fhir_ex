defmodule Fhir.AdverseEvent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_actuality, Fhir.Element
        field :_detected, Fhir.Element
        field :_expectedInResearchStudy, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_recordedDate, Fhir.Element
        field :_status, Fhir.Element
        field :actuality, :string
        field :category, [Fhir.CodeableConcept], default: []
        field :code, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :contributingFactor, [Fhir.AdverseEventContributingFactor], default: []
        field :detected, :datetime
        field :encounter, Fhir.Reference
        field :expectedInResearchStudy, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Reference
        field :meta, Fhir.Meta
        field :mitigatingAction, [Fhir.AdverseEventMitigatingAction], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Period
        field :occurrenceTiming, Fhir.Timing
        field :outcome, [Fhir.CodeableConcept], default: []
        field :participant, [Fhir.AdverseEventParticipant], default: []
        field :preventiveAction, [Fhir.AdverseEventPreventiveAction], default: []
        field :recordedDate, :datetime
        field :recorder, Fhir.Reference
        field :resourceType, :string, default: "AdverseEvent"
        field :resultingEffect, [Fhir.Reference], default: []
        field :seriousness, Fhir.CodeableConcept
        field :status, :string
        field :study, [Fhir.Reference], default: []
        field :subject, Fhir.Reference
        field :supportingInfo, [Fhir.AdverseEventSupportingInfo], default: []
        field :suspectEntity, [Fhir.AdverseEventSuspectEntity], default: []
        field :text, Fhir.Narrative
  end
end
