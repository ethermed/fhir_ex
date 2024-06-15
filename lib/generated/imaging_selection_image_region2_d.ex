defmodule Fhir.ImagingSelectionImageRegion2D do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_coordinate, [Fhir.Element], default: []
        field :_regionType, Fhir.Element
        field :coordinate, [:decimal], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :regionType, :string
  end
end
