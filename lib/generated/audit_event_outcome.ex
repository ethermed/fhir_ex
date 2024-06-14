defmodule Fhir.AuditEventOutcome do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.Coding)
    field(:detail, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
