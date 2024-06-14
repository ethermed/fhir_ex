defmodule Fhir.v6().AuditEventAgent do
  use TypedStruct

  typedstruct do
    field(:_networkString, Fhir.v6().Element)
    field(:_networkUri, Fhir.v6().Element)
    field(:_policy, [Fhir.v6().Element], default: [])
    field(:_requestor, Fhir.v6().Element)
    field(:authorization, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:location, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:networkReference, Fhir.v6().Reference)
    field(:networkString, :string)
    field(:networkUri, :string)
    field(:policy, [:string], default: [])
    field(:requestor, :boolean)
    field(:role, [Fhir.v6().CodeableConcept], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:who, Fhir.v6().Reference)
  end
end
