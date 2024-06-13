defmodule Fhir.Generated.InsurancePlanCost do
  use TypedStruct

  typedstruct do
    field :applicability, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :qualifiers, [Fhir.Generated.CodeableConcept], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :value, Fhir.Generated.Quantity
  end
end
