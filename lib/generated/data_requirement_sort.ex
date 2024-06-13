defmodule Fhir.Generated.DataRequirementSort do
  use TypedStruct

  typedstruct do
    field :_direction, Fhir.Generated.Element
        field :_path, Fhir.Generated.Element
        field :direction, any()
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :path, :string
  end
end
