defmodule Fhir.MedicationKnowledgeDefinitional do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:definition, [Fhir.Reference], default: [])
    field(:doseForm, Fhir.CodeableConcept)
    field(:drugCharacteristic, [Fhir.MedicationKnowledgeDrugCharacteristic], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:ingredient, [Fhir.MedicationKnowledgeIngredient], default: [])
    field(:intendedRoute, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
