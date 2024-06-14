defmodule Fhir.v6().Slot do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.v6().Element)
    field(:_end, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_overbooked, Fhir.v6().Element)
    field(:_start, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:appointmentType, [Fhir.v6().CodeableConcept], default: [])
    field(:comment, :string)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:end, :timestamp)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:overbooked, :boolean)
    field(:resourceType, :string, default: "Slot")
    field(:schedule, Fhir.v6().Reference)
    field(:serviceCategory, [Fhir.v6().CodeableConcept], default: [])
    field(:serviceType, [Fhir.v6().CodeableReference], default: [])
    field(:specialty, [Fhir.v6().CodeableConcept], default: [])
    field(:start, :timestamp)
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
