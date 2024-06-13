defmodule Fhir.Generated.MedicationKnowledgeIngredient do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :item, Fhir.Generated.CodeableReference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :strengthCodeableConcept, Fhir.Generated.CodeableConcept
        field :strengthQuantity, Fhir.Generated.Quantity
        field :strengthRatio, Fhir.Generated.Ratio
        field :type, Fhir.Generated.CodeableConcept
  end
end
