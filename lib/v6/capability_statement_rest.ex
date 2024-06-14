defmodule Fhir.v6().CapabilityStatementRest do
  use TypedStruct

  typedstruct do
    field(:_documentation, Fhir.v6().Element)
    field(:_mode, Fhir.v6().Element)
    field(:compartment, [:string], default: [])
    field(:documentation, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:interaction, [Fhir.v6().CapabilityStatementInteraction1], default: [])
    field(:mode, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:operation, [Fhir.v6().CapabilityStatementOperation], default: [])
    field(:resource, [Fhir.v6().CapabilityStatementResource], default: [])
    field(:searchParam, [Fhir.v6().CapabilityStatementSearchParam], default: [])
    field(:security, Fhir.v6().CapabilityStatementSecurity)
  end
end
