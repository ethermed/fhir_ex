defmodule Fhir.Generated.ExplanationOfBenefitFinancial do
  use TypedStruct

  typedstruct do
    field :_allowedString, Fhir.Generated.Element
        field :_allowedUnsignedInt, Fhir.Generated.Element
        field :_usedUnsignedInt, Fhir.Generated.Element
        field :allowedMoney, Fhir.Generated.Money
        field :allowedString, :string
        field :allowedUnsignedInt, :float
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :usedMoney, Fhir.Generated.Money
        field :usedUnsignedInt, :float
  end
end
