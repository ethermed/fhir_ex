defmodule Fhir.v6().AuditEventOutcome do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.v6().Coding)
    field(:detail, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
