defmodule Fhir.Generated.InsurancePlanPlan do
  use TypedStruct

  typedstruct do
    field :coverageArea, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :generalCost, [Fhir.Generated.InsurancePlanGeneralCost], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :network, [Fhir.Generated.Reference], default: []
        field :specificCost, [Fhir.Generated.InsurancePlanSpecificCost], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
