defmodule Fhir.InsurancePlanCost do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :applicability, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :qualifiers, [Fhir.CodeableConcept], default: []
        field :type, Fhir.CodeableConcept
        field :value, Fhir.Quantity
  end
end
