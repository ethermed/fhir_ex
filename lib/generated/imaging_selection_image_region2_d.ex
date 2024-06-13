defmodule Fhir.Generated.ImagingSelectionImageRegion2D do
  use TypedStruct

  typedstruct do
    field :_coordinate, [Fhir.Generated.Element], default: []
        field :_regionType, Fhir.Generated.Element
        field :coordinate, [:decimal], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :regionType, :string
  end
end
