defmodule Fhir.ClaimResponseAdjudication do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :amount, Fhir.Money
        field :category, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :quantity, Fhir.Quantity
        field :reason, Fhir.CodeableConcept
  end
end
