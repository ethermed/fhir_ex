defmodule Fhir.Generated.InsurancePlanSpecificCost do
  use TypedStruct

  typedstruct do
    field :benefit, [Fhir.Generated.InsurancePlanBenefit1], default: []
        field :category, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
