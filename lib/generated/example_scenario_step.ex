defmodule Fhir.Generated.ExampleScenarioStep do
  use TypedStruct

  typedstruct do
    field :_number, Fhir.Generated.Element
        field :_pause, Fhir.Generated.Element
        field :alternative, [Fhir.Generated.ExampleScenarioAlternative], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :number, :string
        field :operation, Fhir.Generated.ExampleScenarioOperation
        field :pause, :boolean
        field :process, Fhir.Generated.ExampleScenarioProcess
        field :workflow, :string
  end
end
