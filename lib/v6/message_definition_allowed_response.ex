defmodule Fhir.v6().MessageDefinitionAllowedResponse do
  use TypedStruct

  typedstruct do
    field(:_situation, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:message, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:situation, :string)
  end
end
