defmodule Fhir.CapabilityStatementSecurity do
  use TypedStruct

  typedstruct do
    field(:_cors, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:cors, :boolean)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:service, [Fhir.CodeableConcept], default: [])
  end
end
