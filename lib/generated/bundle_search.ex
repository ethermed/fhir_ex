defmodule Fhir.Generated.BundleSearch do
  use TypedStruct

  typedstruct do
    field :_mode, Fhir.Generated.Element
        field :_score, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :mode, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :score, :decimal
  end
end
