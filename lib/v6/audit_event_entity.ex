defmodule Fhir.v6().AuditEventEntity do
  use TypedStruct

  typedstruct do
    field(:_query, Fhir.v6().Element)
    field(:agent, [Fhir.v6().AuditEventAgent], default: [])
    field(:detail, [Fhir.v6().AuditEventDetail], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:query, :string)
    field(:role, Fhir.v6().CodeableConcept)
    field(:securityLabel, [Fhir.v6().CodeableConcept], default: [])
    field(:what, Fhir.v6().Reference)
  end
end
