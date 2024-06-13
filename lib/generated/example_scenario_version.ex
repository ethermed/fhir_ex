defmodule Fhir.Generated.ExampleScenarioVersion do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_key, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :content, Fhir.Generated.Reference
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :key, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :title, :string
  end
end
