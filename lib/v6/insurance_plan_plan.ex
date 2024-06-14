defmodule Fhir.v6().InsurancePlanPlan do
  use TypedStruct

  typedstruct do
    field(:coverageArea, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:generalCost, [Fhir.v6().InsurancePlanGeneralCost], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:network, [Fhir.v6().Reference], default: [])
    field(:specificCost, [Fhir.v6().InsurancePlanSpecificCost], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
