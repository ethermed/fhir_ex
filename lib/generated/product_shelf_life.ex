defmodule Fhir.Generated.ProductShelfLife do
  use TypedStruct

  typedstruct do
    field :_periodString, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :periodDuration, Fhir.Generated.Duration
        field :periodString, :string
        field :specialPrecautionsForStorage, [Fhir.Generated.CodeableConcept], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
