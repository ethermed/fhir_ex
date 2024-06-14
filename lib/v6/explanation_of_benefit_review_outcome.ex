defmodule Fhir.v6().ExplanationOfBenefitReviewOutcome do
  use TypedStruct

  typedstruct do
    field(:_preAuthRef, Fhir.v6().Element)
    field(:decision, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:preAuthPeriod, Fhir.v6().Period)
    field(:preAuthRef, :string)
    field(:reason, [Fhir.v6().CodeableConcept], default: [])
  end
end
