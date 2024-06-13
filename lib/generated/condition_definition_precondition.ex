defmodule Fhir.Generated.ConditionDefinitionPrecondition do
  use TypedStruct

  typedstruct do
    field :_type, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, :string
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueQuantity, Fhir.Generated.Quantity
  end
end
