defmodule Fhir.Generated.MedicationIngredient do
  use TypedStruct

  typedstruct do
    field :_isActive, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :isActive, :boolean
        field :item, Fhir.Generated.CodeableReference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :strengthCodeableConcept, Fhir.Generated.CodeableConcept
        field :strengthQuantity, Fhir.Generated.Quantity
        field :strengthRatio, Fhir.Generated.Ratio
  end
end
