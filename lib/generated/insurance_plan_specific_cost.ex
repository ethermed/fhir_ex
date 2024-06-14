defmodule Fhir.InsurancePlanSpecificCost do
  use TypedStruct

  typedstruct do
    field(:benefit, [Fhir.InsurancePlanBenefit1], default: [])
    field(:category, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
