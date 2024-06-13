defmodule Fhir.Generated.BodyStructureDistanceFromLandmark do
  use TypedStruct

  typedstruct do
    field :device, [Fhir.Generated.CodeableReference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :value, [Fhir.Generated.Quantity], default: []
  end
end
