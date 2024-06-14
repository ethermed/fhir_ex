defmodule Fhir.EncounterHistory do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_plannedEndDate, Fhir.Element)
    field(:_plannedStartDate, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:actualPeriod, Fhir.Period)
    field(:class, Fhir.CodeableConcept)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:encounter, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:length, Fhir.Duration)
    field(:location, [Fhir.EncounterHistoryLocation], default: [])
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:plannedEndDate, :datetime)
    field(:plannedStartDate, :datetime)
    field(:resourceType, :string, default: "EncounterHistory")
    field(:serviceType, [Fhir.CodeableReference], default: [])
    field(:status, :string)
    field(:subject, Fhir.Reference)
    field(:subjectStatus, Fhir.CodeableConcept)
    field(:text, Fhir.Narrative)
    field(:type, [Fhir.CodeableConcept], default: [])
  end
end
