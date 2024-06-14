defmodule Fhir.v6().ImagingSelectionInstance do
  use TypedStruct

  typedstruct do
    field(:_number, Fhir.v6().Element)
    field(:_subset, [Fhir.v6().Element], default: [])
    field(:_uid, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:imageRegion2D, [Fhir.v6().ImagingSelectionImageRegion2D], default: [])
    field(:imageRegion3D, [Fhir.v6().ImagingSelectionImageRegion3D], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:number, :float)
    field(:sopClass, Fhir.v6().Coding)
    field(:subset, [:string], default: [])
    field(:uid, :string)
  end
end
