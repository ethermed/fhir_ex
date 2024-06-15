defmodule Fhir.SubstanceSourceMaterialFractionDescription do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_fraction, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :fraction, :string
        field :id, :string
        field :materialType, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
