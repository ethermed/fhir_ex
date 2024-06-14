defmodule Fhir.v6().BodyStructureDistanceFromLandmark do
  use TypedStruct

  typedstruct do
    field(:device, [Fhir.v6().CodeableReference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:value, [Fhir.v6().Quantity], default: [])
  end
end
