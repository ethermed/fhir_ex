defmodule Fhir.Generated.ElementDefinitionBase do
  use TypedStruct

  typedstruct do
    field :_max, Fhir.Generated.Element
        field :_min, Fhir.Generated.Element
        field :_path, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :max, :string
        field :min, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :path, :string
  end
end
