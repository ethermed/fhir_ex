defmodule Fhir.v6().Medication do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:batch, Fhir.v6().MedicationBatch)
    field(:code, Fhir.v6().CodeableConcept)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:definition, Fhir.v6().Reference)
    field(:doseForm, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:ingredient, [Fhir.v6().MedicationIngredient], default: [])
    field(:language, :string)
    field(:marketingAuthorizationHolder, Fhir.v6().Reference)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resourceType, :string, default: "Medication")
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
    field(:totalVolume, Fhir.v6().Quantity)
  end
end
