defmodule Fhir.v6().AuditEventSource do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:observer, Fhir.v6().Reference)
    field(:site, Fhir.v6().Reference)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
