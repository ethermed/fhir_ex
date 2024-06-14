defmodule Fhir.v6().MedicationKnowledgeDefinitional do
  use TypedStruct

  typedstruct do
    field(:definition, [Fhir.v6().Reference], default: [])
    field(:doseForm, Fhir.v6().CodeableConcept)
    field(:drugCharacteristic, [Fhir.v6().MedicationKnowledgeDrugCharacteristic], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:ingredient, [Fhir.v6().MedicationKnowledgeIngredient], default: [])
    field(:intendedRoute, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
