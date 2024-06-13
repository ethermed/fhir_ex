defmodule Fhir.Generated.ExplanationOfBenefitPayment do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :adjustment, Fhir.Generated.Money
        field :adjustmentReason, Fhir.Generated.CodeableConcept
        field :amount, Fhir.Generated.Money
        field :date, :date
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
