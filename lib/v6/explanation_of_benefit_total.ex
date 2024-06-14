defmodule Fhir.v6().ExplanationOfBenefitTotal do
  use TypedStruct

  typedstruct do
    field(:amount, Fhir.v6().Money)
    field(:category, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
