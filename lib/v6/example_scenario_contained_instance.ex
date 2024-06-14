defmodule Fhir.v6().ExampleScenarioContainedInstance do
  use TypedStruct

  typedstruct do
    field(:_instanceReference, Fhir.v6().Element)
    field(:_versionReference, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:instanceReference, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:versionReference, :string)
  end
end
