defmodule Fhir.v6().Provenance do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_occurredDateTime, Fhir.v6().Element)
    field(:_policy, [Fhir.v6().Element], default: [])
    field(:_recorded, Fhir.v6().Element)
    field(:activity, Fhir.v6().CodeableConcept)
    field(:agent, [Fhir.v6().ProvenanceAgent], default: [])
    field(:authorization, [Fhir.v6().CodeableReference], default: [])
    field(:basedOn, [Fhir.v6().Reference], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:encounter, Fhir.v6().Reference)
    field(:entity, [Fhir.v6().ProvenanceEntity], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:location, Fhir.v6().Reference)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:occurredDateTime, :string)
    field(:occurredPeriod, Fhir.v6().Period)
    field(:patient, Fhir.v6().Reference)
    field(:policy, [:string], default: [])
    field(:recorded, :timestamp)
    field(:resourceType, :string, default: "Provenance")
    field(:signature, [Fhir.v6().Signature], default: [])
    field(:target, [Fhir.v6().Reference], default: [])
    field(:text, Fhir.v6().Narrative)
  end
end
