defmodule Fhir.Generated.CapabilityStatementMessaging do
  use TypedStruct

  typedstruct do
    field :_documentation, Fhir.Generated.Element
        field :_reliableCache, Fhir.Generated.Element
        field :documentation, :string
        field :endpoint, [Fhir.Generated.CapabilityStatementEndpoint], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reliableCache, :float
        field :supportedMessage, [Fhir.Generated.CapabilityStatementSupportedMessage], default: []
  end
end
