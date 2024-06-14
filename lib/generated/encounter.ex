defmodule Fhir.Encounter do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_plannedEndDate, Fhir.Element)
    field(:_plannedStartDate, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:account, [Fhir.Reference], default: [])
    field(:actualPeriod, Fhir.Period)
    field(:admission, Fhir.EncounterAdmission)
    field(:appointment, [Fhir.Reference], default: [])
    field(:basedOn, [Fhir.Reference], default: [])
    field(:careTeam, [Fhir.Reference], default: [])
    field(:class, [Fhir.CodeableConcept], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:diagnosis, [Fhir.EncounterDiagnosis], default: [])
    field(:dietPreference, [Fhir.CodeableConcept], default: [])
    field(:episodeOfCare, [Fhir.Reference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:length, Fhir.Duration)
    field(:location, [Fhir.EncounterLocation], default: [])
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:partOf, Fhir.Reference)
    field(:participant, [Fhir.EncounterParticipant], default: [])
    field(:plannedEndDate, :datetime)
    field(:plannedStartDate, :datetime)
    field(:priority, Fhir.CodeableConcept)
    field(:reason, [Fhir.EncounterReason], default: [])
    field(:resourceType, :string, default: "Encounter")
    field(:serviceProvider, Fhir.Reference)
    field(:serviceType, [Fhir.CodeableReference], default: [])
    field(:specialArrangement, [Fhir.CodeableConcept], default: [])
    field(:specialCourtesy, [Fhir.CodeableConcept], default: [])
    field(:status, :string)
    field(:subject, Fhir.Reference)
    field(:subjectStatus, Fhir.CodeableConcept)
    field(:text, Fhir.Narrative)
    field(:type, [Fhir.CodeableConcept], default: [])
    field(:virtualService, [Fhir.VirtualServiceDetail], default: [])
  end
end