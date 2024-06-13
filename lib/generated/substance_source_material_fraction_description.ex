defmodule Fhir.Generated.SubstanceSourceMaterialFractionDescription do
  use TypedStruct

  typedstruct do
    field :_fraction, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :fraction, :string
        field :id, :string
        field :materialType, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
