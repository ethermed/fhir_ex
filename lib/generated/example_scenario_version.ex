defmodule Fhir.ExampleScenarioVersion do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_key, Fhir.Element
        field :_title, Fhir.Element
        field :content, Fhir.Reference
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :key, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :title, :string
  end
end
