defmodule Fhir.Generated.MessageDefinitionAllowedResponse do
  use TypedStruct

  typedstruct do
    field :_situation, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :message, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :situation, :string
  end
end
