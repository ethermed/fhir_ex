defmodule Fhir.CommunicationRequest do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_authoredOn, Fhir.Element
        field :_doNotPerform, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_intent, Fhir.Element
        field :_language, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_priority, Fhir.Element
        field :_status, Fhir.Element
        field :about, [Fhir.Reference], default: []
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Reference], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :doNotPerform, :boolean
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :groupIdentifier, Fhir.Identifier
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :informationProvider, [Fhir.Reference], default: []
        field :intent, :string
        field :language, :string
        field :medium, [Fhir.CodeableConcept], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Period
        field :payload, [Fhir.CommunicationRequestPayload], default: []
        field :priority, :string
        field :reason, [Fhir.CodeableReference], default: []
        field :recipient, [Fhir.Reference], default: []
        field :replaces, [Fhir.Reference], default: []
        field :requester, Fhir.Reference
        field :resourceType, :string, default: "CommunicationRequest"
        field :status, :string
        field :statusReason, Fhir.CodeableConcept
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
  end
end
