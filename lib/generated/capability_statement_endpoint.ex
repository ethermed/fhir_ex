defmodule Fhir.Generated.CapabilityStatementEndpoint do
  use TypedStruct

  typedstruct do
    field :_address, Fhir.Generated.Element
        field :address, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :protocol, Fhir.Generated.Coding
  end
end
