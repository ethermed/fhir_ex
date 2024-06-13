defmodule Fhir.Generated.Encounter do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_plannedEndDate, Fhir.Generated.Element
        field :_plannedStartDate, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :account, [Fhir.Generated.Reference], default: []
        field :actualPeriod, Fhir.Generated.Period
        field :admission, Fhir.Generated.EncounterAdmission
        field :appointment, [Fhir.Generated.Reference], default: []
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :careTeam, [Fhir.Generated.Reference], default: []
        field :class, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :diagnosis, [Fhir.Generated.EncounterDiagnosis], default: []
        field :dietPreference, [Fhir.Generated.CodeableConcept], default: []
        field :episodeOfCare, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :length, Fhir.Generated.Duration
        field :location, [Fhir.Generated.EncounterLocation], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :partOf, Fhir.Generated.Reference
        field :participant, [Fhir.Generated.EncounterParticipant], default: []
        field :plannedEndDate, :datetime
        field :plannedStartDate, :datetime
        field :priority, Fhir.Generated.CodeableConcept
        field :reason, [Fhir.Generated.EncounterReason], default: []
        field :resourceType, :string, default: "Encounter"
        field :serviceProvider, Fhir.Generated.Reference
        field :serviceType, [Fhir.Generated.CodeableReference], default: []
        field :specialArrangement, [Fhir.Generated.CodeableConcept], default: []
        field :specialCourtesy, [Fhir.Generated.CodeableConcept], default: []
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :subjectStatus, Fhir.Generated.CodeableConcept
        field :text, Fhir.Generated.Narrative
        field :type, [Fhir.Generated.CodeableConcept], default: []
        field :virtualService, [Fhir.Generated.VirtualServiceDetail], default: []
  end
end
