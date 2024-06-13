defmodule Fhir.Generated.MessageDefinitionFocus do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_max, Fhir.Generated.Element
        field :_min, Fhir.Generated.Element
        field :code, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :max, :string
        field :min, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :profile, :string
  end
end
