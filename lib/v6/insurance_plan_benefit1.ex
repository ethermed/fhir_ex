defmodule Fhir.v6().InsurancePlanBenefit1 do
  use TypedStruct

  typedstruct do
    field(:cost, [Fhir.v6().InsurancePlanCost], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
