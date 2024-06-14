defmodule Fhir.v6().CapabilityStatementSupportedMessage do
  use TypedStruct

  typedstruct do
    field(:_mode, Fhir.v6().Element)
    field(:definition, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
