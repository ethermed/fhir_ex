defmodule Fhir.Generated.InsurancePlanCoverage do
  use TypedStruct

  typedstruct do
    field :benefit, [Fhir.Generated.InsurancePlanBenefit], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :network, [Fhir.Generated.Reference], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
