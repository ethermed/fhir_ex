defmodule Fhir.v6().ContractAction do
  use TypedStruct

  typedstruct do
    field(:_contextLinkId, [Fhir.v6().Element], default: [])
    field(:_doNotPerform, Fhir.v6().Element)
    field(:_linkId, [Fhir.v6().Element], default: [])
    field(:_occurrenceDateTime, Fhir.v6().Element)
    field(:_performerLinkId, [Fhir.v6().Element], default: [])
    field(:_reasonLinkId, [Fhir.v6().Element], default: [])
    field(:_requesterLinkId, [Fhir.v6().Element], default: [])
    field(:_securityLabelNumber, [Fhir.v6().Element], default: [])
    field(:context, Fhir.v6().Reference)
    field(:contextLinkId, [:string], default: [])
    field(:doNotPerform, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:intent, Fhir.v6().CodeableConcept)
    field(:linkId, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:occurrenceDateTime, :string)
    field(:occurrencePeriod, Fhir.v6().Period)
    field(:occurrenceTiming, Fhir.v6().Timing)
    field(:performer, Fhir.v6().Reference)
    field(:performerLinkId, [:string], default: [])
    field(:performerRole, Fhir.v6().CodeableConcept)
    field(:performerType, [Fhir.v6().CodeableConcept], default: [])
    field(:reason, [Fhir.v6().CodeableReference], default: [])
    field(:reasonLinkId, [:string], default: [])
    field(:requester, [Fhir.v6().Reference], default: [])
    field(:requesterLinkId, [:string], default: [])
    field(:securityLabelNumber, [:float], default: [])
    field(:status, Fhir.v6().CodeableConcept)
    field(:subject, [Fhir.v6().ContractSubject], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end