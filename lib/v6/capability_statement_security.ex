defmodule Fhir.v6().CapabilityStatementSecurity do
  use TypedStruct

  typedstruct do
    field(:_cors, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:cors, :boolean)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:service, [Fhir.v6().CodeableConcept], default: [])
  end
end
