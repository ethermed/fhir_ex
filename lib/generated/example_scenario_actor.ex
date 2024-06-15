defmodule Fhir.ExampleScenarioActor do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_key, Fhir.Element
        field :_title, Fhir.Element
        field :_type, Fhir.Element
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :key, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :title, :string
        field :type, :string
  end
end
