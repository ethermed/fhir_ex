defmodule Fhir.InsurancePlanBenefit1 do
  use TypedStruct

  typedstruct do
    field(:cost, [Fhir.InsurancePlanCost], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
