defmodule Fhir.ExampleScenarioProcess do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_postConditions, Fhir.Element
        field :_preConditions, Fhir.Element
        field :_title, Fhir.Element
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :postConditions, :string
        field :preConditions, :string
        field :step, [Fhir.ExampleScenarioStep], default: []
        field :title, :string
  end
end
