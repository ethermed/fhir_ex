defmodule Fhir.v6().ExampleScenarioOperation do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_initiator, Fhir.v6().Element)
    field(:_initiatorActive, Fhir.v6().Element)
    field(:_receiver, Fhir.v6().Element)
    field(:_receiverActive, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:initiator, :string)
    field(:initiatorActive, :boolean)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:receiver, :string)
    field(:receiverActive, :boolean)
    field(:request, Fhir.v6().ExampleScenarioContainedInstance)
    field(:response, Fhir.v6().ExampleScenarioContainedInstance)
    field(:title, :string)
    field(:type, Fhir.v6().Coding)
  end
end
