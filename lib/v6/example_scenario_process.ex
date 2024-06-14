defmodule Fhir.v6().ExampleScenarioProcess do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_postConditions, Fhir.v6().Element)
    field(:_preConditions, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:postConditions, :string)
    field(:preConditions, :string)
    field(:step, [Fhir.v6().ExampleScenarioStep], default: [])
    field(:title, :string)
  end
end
