defmodule Fhir.InsurancePlanCoverage do
  use TypedStruct

  typedstruct do
    field(:benefit, [Fhir.InsurancePlanBenefit], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:network, [Fhir.Reference], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
