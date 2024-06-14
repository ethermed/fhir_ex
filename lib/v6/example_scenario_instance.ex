defmodule Fhir.v6().ExampleScenarioInstance do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_key, Fhir.v6().Element)
    field(:_structureProfileCanonical, Fhir.v6().Element)
    field(:_structureProfileUri, Fhir.v6().Element)
    field(:_structureVersion, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:containedInstance, [Fhir.v6().ExampleScenarioContainedInstance], default: [])
    field(:content, Fhir.v6().Reference)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:key, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:structureProfileCanonical, :string)
    field(:structureProfileUri, :string)
    field(:structureType, Fhir.v6().Coding)
    field(:structureVersion, :string)
    field(:title, :string)
    field(:version, [Fhir.v6().ExampleScenarioVersion], default: [])
  end
end
