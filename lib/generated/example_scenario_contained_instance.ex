defmodule Fhir.Generated.ExampleScenarioContainedInstance do
  use TypedStruct

  typedstruct do
    field :_instanceReference, Fhir.Generated.Element
        field :_versionReference, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :instanceReference, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :versionReference, :string
  end
end
