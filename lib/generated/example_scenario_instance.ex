defmodule Fhir.Generated.ExampleScenarioInstance do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_key, Fhir.Generated.Element
        field :_structureProfileCanonical, Fhir.Generated.Element
        field :_structureProfileUri, Fhir.Generated.Element
        field :_structureVersion, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :containedInstance, [Fhir.Generated.ExampleScenarioContainedInstance], default: []
        field :content, Fhir.Generated.Reference
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :key, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :structureProfileCanonical, :string
        field :structureProfileUri, :string
        field :structureType, Fhir.Generated.Coding
        field :structureVersion, :string
        field :title, :string
        field :version, [Fhir.Generated.ExampleScenarioVersion], default: []
  end
end
