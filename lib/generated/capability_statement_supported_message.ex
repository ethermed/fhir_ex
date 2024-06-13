defmodule Fhir.Generated.CapabilityStatementSupportedMessage do
  use TypedStruct

  typedstruct do
    field :_mode, Fhir.Generated.Element
        field :definition, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :mode, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
