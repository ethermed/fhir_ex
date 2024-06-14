defmodule Fhir.v6().InsurancePlanSpecificCost do
  use TypedStruct

  typedstruct do
    field(:benefit, [Fhir.v6().InsurancePlanBenefit1], default: [])
    field(:category, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
