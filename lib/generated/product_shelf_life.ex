defmodule Fhir.ProductShelfLife do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_periodString, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :periodDuration, Fhir.Duration
        field :periodString, :string
        field :specialPrecautionsForStorage, [Fhir.CodeableConcept], default: []
        field :type, Fhir.CodeableConcept
  end
end
