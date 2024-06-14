defmodule Fhir.v6().CapabilityStatementMessaging do
  use TypedStruct

  typedstruct do
    field(:_documentation, Fhir.v6().Element)
    field(:_reliableCache, Fhir.v6().Element)
    field(:documentation, :string)
    field(:endpoint, [Fhir.v6().CapabilityStatementEndpoint], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reliableCache, :float)
    field(:supportedMessage, [Fhir.v6().CapabilityStatementSupportedMessage], default: [])
  end
end
