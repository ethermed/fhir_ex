defmodule Fhir.v6().ExplanationOfBenefitAdjudication do
  use TypedStruct

  typedstruct do
    field(:amount, Fhir.v6().Money)
    field(:category, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:quantity, Fhir.v6().Quantity)
    field(:reason, Fhir.v6().CodeableConcept)
  end
end
