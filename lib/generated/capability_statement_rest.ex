defmodule Fhir.Generated.CapabilityStatementRest do
  use TypedStruct

  typedstruct do
    field :_documentation, Fhir.Generated.Element
        field :_mode, Fhir.Generated.Element
        field :compartment, [:string], default: []
        field :documentation, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :interaction, [Fhir.Generated.CapabilityStatementInteraction1], default: []
        field :mode, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :operation, [Fhir.Generated.CapabilityStatementOperation], default: []
        field :resource, [Fhir.Generated.CapabilityStatementResource], default: []
        field :searchParam, [Fhir.Generated.CapabilityStatementSearchParam], default: []
        field :security, Fhir.Generated.CapabilityStatementSecurity
  end
end
