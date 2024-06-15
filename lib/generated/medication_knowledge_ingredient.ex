defmodule Fhir.MedicationKnowledgeIngredient do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :item, Fhir.CodeableReference
        field :modifierExtension, [Fhir.Extension], default: []
        field :strengthCodeableConcept, Fhir.CodeableConcept
        field :strengthQuantity, Fhir.Quantity
        field :strengthRatio, Fhir.Ratio
        field :type, Fhir.CodeableConcept
  end
end
