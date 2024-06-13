defmodule Fhir.Generated.ExampleScenarioActor do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_key, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :key, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :title, :string
        field :type, :string
  end
end
