defmodule Fhir.Generated.ExampleScenarioAlternative do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :step, [Fhir.Generated.ExampleScenarioStep], default: []
        field :title, :string
  end
end
