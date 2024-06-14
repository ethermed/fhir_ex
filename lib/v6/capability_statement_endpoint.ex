defmodule Fhir.v6().CapabilityStatementEndpoint do
  use TypedStruct

  typedstruct do
    field(:_address, Fhir.v6().Element)
    field(:address, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:protocol, Fhir.v6().Coding)
  end
end
