defmodule Fhir.Generated.ExampleScenarioProcess do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_postConditions, Fhir.Generated.Element
        field :_preConditions, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :postConditions, :string
        field :preConditions, :string
        field :step, [Fhir.Generated.ExampleScenarioStep], default: []
        field :title, :string
  end
end
