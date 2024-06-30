defmodule Fhir.ImagingSelectionInstance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_number, Fhir.Element)
    field(:_subset, [Fhir.Element], default: [])
    field(:_uid, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:imageRegion2D, [Fhir.ImagingSelectionImageRegion2D], default: [])
    field(:imageRegion3D, [Fhir.ImagingSelectionImageRegion3D], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:number, :float)
    field(:sopClass, Fhir.Coding)
    field(:subset, [:string], default: [])
    field(:uid, :string)
  end
end
