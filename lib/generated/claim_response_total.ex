defmodule Fhir.Generated.ClaimResponseTotal do
  use TypedStruct

  typedstruct do
    field :amount, Fhir.Generated.Money
        field :category, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
