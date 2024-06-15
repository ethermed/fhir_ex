defmodule Fhir.TestScriptDestination do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_index, Fhir.Element
        field :_url, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :index, :float
        field :modifierExtension, [Fhir.Extension], default: []
        field :profile, Fhir.Coding
        field :url, :string
  end
end
