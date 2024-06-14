defmodule Fhir.InsurancePlanPlan do
  use TypedStruct

  typedstruct do
    field(:coverageArea, [Fhir.Reference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:generalCost, [Fhir.InsurancePlanGeneralCost], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:network, [Fhir.Reference], default: [])
    field(:specificCost, [Fhir.InsurancePlanSpecificCost], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
