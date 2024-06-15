defmodule Fhir.ContractAction do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_contextLinkId, [Fhir.Element], default: []
        field :_doNotPerform, Fhir.Element
        field :_linkId, [Fhir.Element], default: []
        field :_occurrenceDateTime, Fhir.Element
        field :_performerLinkId, [Fhir.Element], default: []
        field :_reasonLinkId, [Fhir.Element], default: []
        field :_requesterLinkId, [Fhir.Element], default: []
        field :_securityLabelNumber, [Fhir.Element], default: []
        field :context, Fhir.Reference
        field :contextLinkId, [:string], default: []
        field :doNotPerform, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :intent, Fhir.CodeableConcept
        field :linkId, [:string], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Period
        field :occurrenceTiming, Fhir.Timing
        field :performer, Fhir.Reference
        field :performerLinkId, [:string], default: []
        field :performerRole, Fhir.CodeableConcept
        field :performerType, [Fhir.CodeableConcept], default: []
        field :reason, [Fhir.CodeableReference], default: []
        field :reasonLinkId, [:string], default: []
        field :requester, [Fhir.Reference], default: []
        field :requesterLinkId, [:string], default: []
        field :securityLabelNumber, [:float], default: []
        field :status, Fhir.CodeableConcept
        field :subject, [Fhir.ContractSubject], default: []
        field :type, Fhir.CodeableConcept
  end
end
