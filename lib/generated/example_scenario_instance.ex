defmodule Fhir.ExampleScenarioInstance do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_key, Fhir.Element)
    field(:_structureProfileCanonical, Fhir.Element)
    field(:_structureProfileUri, Fhir.Element)
    field(:_structureVersion, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:containedInstance, [Fhir.ExampleScenarioContainedInstance], default: [])
    field(:content, Fhir.Reference)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:key, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:structureProfileCanonical, :string)
    field(:structureProfileUri, :string)
    field(:structureType, Fhir.Coding)
    field(:structureVersion, :string)
    field(:title, :string)
    field(:version, [Fhir.ExampleScenarioVersion], default: [])
  end
end
