defmodule Fhir.Generated.ExplanationOfBenefitSubDetail1 do
  use TypedStruct

  typedstruct do
    field :_factor, Fhir.Generated.Element
        field :_noteNumber, [Fhir.Generated.Element], default: []
        field :adjudication, [Fhir.Generated.ExplanationOfBenefitAdjudication], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :factor, :decimal
        field :id, :string
        field :modifier, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :net, Fhir.Generated.Money
        field :noteNumber, [:float], default: []
        field :patientPaid, Fhir.Generated.Money
        field :productOrService, Fhir.Generated.CodeableConcept
        field :productOrServiceEnd, Fhir.Generated.CodeableConcept
        field :quantity, Fhir.Generated.Quantity
        field :revenue, Fhir.Generated.CodeableConcept
        field :reviewOutcome, Fhir.Generated.ExplanationOfBenefitReviewOutcome
        field :tax, Fhir.Generated.Money
        field :traceNumber, [Fhir.Generated.Identifier], default: []
        field :unitPrice, Fhir.Generated.Money
  end
end
