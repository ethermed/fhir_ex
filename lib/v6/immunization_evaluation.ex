defmodule Fhir.v6().ImmunizationEvaluation do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_doseNumber, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_series, Fhir.v6().Element)
    field(:_seriesDoses, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:authority, Fhir.v6().Reference)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:date, :datetime)
    field(:description, :string)
    field(:doseNumber, :string)
    field(:doseStatus, Fhir.v6().CodeableConcept)
    field(:doseStatusReason, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:immunizationEvent, Fhir.v6().Reference)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:patient, Fhir.v6().Reference)
    field(:resourceType, :string, default: "ImmunizationEvaluation")
    field(:series, :string)
    field(:seriesDoses, :string)
    field(:status, :string)
    field(:targetDisease, Fhir.v6().CodeableConcept)
    field(:text, Fhir.v6().Narrative)
  end
end