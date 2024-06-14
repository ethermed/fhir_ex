defmodule Fhir.ExampleScenarioAlternative do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:step, [Fhir.ExampleScenarioStep], default: [])
    field(:title, :string)
  end
end
