defmodule Fhir.MessageDefinitionAllowedResponse do
  use TypedStruct

  typedstruct do
    field(:_situation, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:message, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:situation, :string)
  end
end
