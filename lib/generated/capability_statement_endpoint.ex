defmodule Fhir.CapabilityStatementEndpoint do
  use TypedStruct

  typedstruct do
    field(:_address, Fhir.Element)
    field(:address, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:protocol, Fhir.Coding)
  end
end