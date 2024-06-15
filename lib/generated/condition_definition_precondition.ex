defmodule Fhir.ConditionDefinitionPrecondition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_type, Fhir.Element
        field :code, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :type, :string
        field :valueCodeableConcept, Fhir.CodeableConcept
        field :valueQuantity, Fhir.Quantity
  end
end
