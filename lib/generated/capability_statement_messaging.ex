defmodule Fhir.CapabilityStatementMessaging do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_documentation, Fhir.Element)
    field(:_reliableCache, Fhir.Element)
    field(:documentation, :string)
    field(:endpoint, [Fhir.CapabilityStatementEndpoint], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:reliableCache, :float)
    field(:supportedMessage, [Fhir.CapabilityStatementSupportedMessage], default: [])
  end
end
