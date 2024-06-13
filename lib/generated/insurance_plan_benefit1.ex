defmodule Fhir.Generated.InsurancePlanBenefit1 do
  use TypedStruct

  typedstruct do
    field :cost, [Fhir.Generated.InsurancePlanCost], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
