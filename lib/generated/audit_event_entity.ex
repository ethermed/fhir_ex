defmodule Fhir.AuditEventEntity do
  use TypedStruct

  typedstruct do
    field(:_query, Fhir.Element)
    field(:agent, [Fhir.AuditEventAgent], default: [])
    field(:detail, [Fhir.AuditEventDetail], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:query, :string)
    field(:role, Fhir.CodeableConcept)
    field(:securityLabel, [Fhir.CodeableConcept], default: [])
    field(:what, Fhir.Reference)
  end
end
