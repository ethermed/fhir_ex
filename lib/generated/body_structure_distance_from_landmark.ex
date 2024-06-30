defmodule Fhir.BodyStructureDistanceFromLandmark do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:device, [Fhir.CodeableReference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:value, [Fhir.Quantity], default: [])
  end
end
