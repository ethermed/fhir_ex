defmodule Fhir.ExampleScenarioOperation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_description, Fhir.Element)
    field(:_initiator, Fhir.Element)
    field(:_initiatorActive, Fhir.Element)
    field(:_receiver, Fhir.Element)
    field(:_receiverActive, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:initiator, :string)
    field(:initiatorActive, :boolean)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:receiver, :string)
    field(:receiverActive, :boolean)
    field(:request, Fhir.ExampleScenarioContainedInstance)
    field(:response, Fhir.ExampleScenarioContainedInstance)
    field(:title, :string)
    field(:type, Fhir.Coding)
  end
end
