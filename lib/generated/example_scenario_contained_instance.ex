defmodule Fhir.ExampleScenarioContainedInstance do
  use TypedStruct

  typedstruct do
    field(:_instanceReference, Fhir.Element)
    field(:_versionReference, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:instanceReference, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:versionReference, :string)
  end
end
