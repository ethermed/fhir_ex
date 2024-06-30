defmodule Fhir.ExampleScenarioStep do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_number, Fhir.Element)
    field(:_pause, Fhir.Element)
    field(:alternative, [Fhir.ExampleScenarioAlternative], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:number, :string)
    field(:operation, Fhir.ExampleScenarioOperation)
    field(:pause, :boolean)
    field(:process, Fhir.ExampleScenarioProcess)
    field(:workflow, :string)
  end
end
