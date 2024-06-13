defmodule Fhir.Generated.ContractAction do
  use TypedStruct

  typedstruct do
    field :_contextLinkId, [Fhir.Generated.Element], default: []
        field :_doNotPerform, Fhir.Generated.Element
        field :_linkId, [Fhir.Generated.Element], default: []
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_performerLinkId, [Fhir.Generated.Element], default: []
        field :_reasonLinkId, [Fhir.Generated.Element], default: []
        field :_requesterLinkId, [Fhir.Generated.Element], default: []
        field :_securityLabelNumber, [Fhir.Generated.Element], default: []
        field :context, Fhir.Generated.Reference
        field :contextLinkId, [:string], default: []
        field :doNotPerform, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :intent, Fhir.Generated.CodeableConcept
        field :linkId, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :occurrenceTiming, Fhir.Generated.Timing
        field :performer, Fhir.Generated.Reference
        field :performerLinkId, [:string], default: []
        field :performerRole, Fhir.Generated.CodeableConcept
        field :performerType, [Fhir.Generated.CodeableConcept], default: []
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :reasonLinkId, [:string], default: []
        field :requester, [Fhir.Generated.Reference], default: []
        field :requesterLinkId, [:string], default: []
        field :securityLabelNumber, [:float], default: []
        field :status, Fhir.Generated.CodeableConcept
        field :subject, [Fhir.Generated.ContractSubject], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
