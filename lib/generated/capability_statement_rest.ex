defmodule Fhir.CapabilityStatementRest do
  use TypedStruct

  typedstruct do
    field(:_documentation, Fhir.Element)
    field(:_mode, Fhir.Element)
    field(:compartment, [:string], default: [])
    field(:documentation, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:interaction, [Fhir.CapabilityStatementInteraction1], default: [])
    field(:mode, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:operation, [Fhir.CapabilityStatementOperation], default: [])
    field(:resource, [Fhir.CapabilityStatementResource], default: [])
    field(:searchParam, [Fhir.CapabilityStatementSearchParam], default: [])
    field(:security, Fhir.CapabilityStatementSecurity)
  end
end
