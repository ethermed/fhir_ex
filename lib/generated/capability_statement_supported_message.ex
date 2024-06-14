defmodule Fhir.CapabilityStatementSupportedMessage do
  use TypedStruct

  typedstruct do
    field(:_mode, Fhir.Element)
    field(:definition, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
