defmodule Fhir.Generated.ImagingSelectionInstance do
  use TypedStruct

  typedstruct do
    field :_number, Fhir.Generated.Element
        field :_subset, [Fhir.Generated.Element], default: []
        field :_uid, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :imageRegion2D, [Fhir.Generated.ImagingSelectionImageRegion2D], default: []
        field :imageRegion3D, [Fhir.Generated.ImagingSelectionImageRegion3D], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :number, :float
        field :sopClass, Fhir.Generated.Coding
        field :subset, [:string], default: []
        field :uid, :string
  end
end
