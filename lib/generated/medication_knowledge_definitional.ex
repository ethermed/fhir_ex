defmodule Fhir.Generated.MedicationKnowledgeDefinitional do
  use TypedStruct

  typedstruct do
    field :definition, [Fhir.Generated.Reference], default: []
        field :doseForm, Fhir.Generated.CodeableConcept
        field :drugCharacteristic, [Fhir.Generated.MedicationKnowledgeDrugCharacteristic], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :ingredient, [Fhir.Generated.MedicationKnowledgeIngredient], default: []
        field :intendedRoute, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
