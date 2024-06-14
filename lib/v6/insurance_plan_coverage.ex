defmodule Fhir.v6().InsurancePlanCoverage do
  use TypedStruct

  typedstruct do
    field(:benefit, [Fhir.v6().InsurancePlanBenefit], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:network, [Fhir.v6().Reference], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
