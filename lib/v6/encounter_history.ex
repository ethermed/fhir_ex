defmodule Fhir.v6().EncounterHistory do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_plannedEndDate, Fhir.v6().Element)
    field(:_plannedStartDate, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:actualPeriod, Fhir.v6().Period)
    field(:class, Fhir.v6().CodeableConcept)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:encounter, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:length, Fhir.v6().Duration)
    field(:location, [Fhir.v6().EncounterHistoryLocation], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:plannedEndDate, :datetime)
    field(:plannedStartDate, :datetime)
    field(:resourceType, :string, default: "EncounterHistory")
    field(:serviceType, [Fhir.v6().CodeableReference], default: [])
    field(:status, :string)
    field(:subject, Fhir.v6().Reference)
    field(:subjectStatus, Fhir.v6().CodeableConcept)
    field(:text, Fhir.v6().Narrative)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
