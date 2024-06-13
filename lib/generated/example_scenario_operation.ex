defmodule Fhir.Generated.ExampleScenarioOperation do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_initiator, Fhir.Generated.Element
        field :_initiatorActive, Fhir.Generated.Element
        field :_receiver, Fhir.Generated.Element
        field :_receiverActive, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :initiator, :string
        field :initiatorActive, :boolean
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :receiver, :string
        field :receiverActive, :boolean
        field :request, Fhir.Generated.ExampleScenarioContainedInstance
        field :response, Fhir.Generated.ExampleScenarioContainedInstance
        field :title, :string
        field :type, Fhir.Generated.Coding
  end
end
