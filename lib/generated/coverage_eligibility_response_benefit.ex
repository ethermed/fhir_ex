defmodule Fhir.Generated.CoverageEligibilityResponseBenefit do
  use TypedStruct

  typedstruct do
    field :_allowedString, Fhir.Generated.Element
        field :_allowedUnsignedInt, Fhir.Generated.Element
        field :_usedString, Fhir.Generated.Element
        field :_usedUnsignedInt, Fhir.Generated.Element
        field :allowedMoney, Fhir.Generated.Money
        field :allowedString, :string
        field :allowedUnsignedInt, :float
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :usedMoney, Fhir.Generated.Money
        field :usedString, :string
        field :usedUnsignedInt, :float
  end
end
