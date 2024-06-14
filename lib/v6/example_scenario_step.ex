defmodule Fhir.v6().ExampleScenarioStep do
  use TypedStruct

  typedstruct do
    field(:_number, Fhir.v6().Element)
    field(:_pause, Fhir.v6().Element)
    field(:alternative, [Fhir.v6().ExampleScenarioAlternative], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:number, :string)
    field(:operation, Fhir.v6().ExampleScenarioOperation)
    field(:pause, :boolean)
    field(:process, Fhir.v6().ExampleScenarioProcess)
    field(:workflow, :string)
  end
end
