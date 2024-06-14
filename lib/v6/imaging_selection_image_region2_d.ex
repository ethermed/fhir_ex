defmodule Fhir.v6().ImagingSelectionImageRegion2D do
  use TypedStruct

  typedstruct do
    field(:_coordinate, [Fhir.v6().Element], default: [])
    field(:_regionType, Fhir.v6().Element)
    field(:coordinate, [:decimal], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:regionType, :string)
  end
end
