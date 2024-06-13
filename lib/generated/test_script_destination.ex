defmodule Fhir.Generated.TestScriptDestination do
  use TypedStruct

  typedstruct do
    field :_index, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :index, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :profile, Fhir.Generated.Coding
        field :url, :string
  end
end
