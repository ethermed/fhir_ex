defmodule Fhir.Generated.ExplanationOfBenefitReviewOutcome do
  use TypedStruct

  typedstruct do
    field :_preAuthRef, Fhir.Generated.Element
        field :decision, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :preAuthPeriod, Fhir.Generated.Period
        field :preAuthRef, :string
        field :reason, [Fhir.Generated.CodeableConcept], default: []
  end
end
