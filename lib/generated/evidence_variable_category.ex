defmodule Fhir.EvidenceVariableCategory do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_name, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :valueCodeableConcept, Fhir.CodeableConcept
        field :valueQuantity, Fhir.Quantity
        field :valueRange, Fhir.Range
  end
end
