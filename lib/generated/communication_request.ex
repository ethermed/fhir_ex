defmodule Fhir.Generated.CommunicationRequest do
  use TypedStruct

  typedstruct do
    field :_authoredOn, Fhir.Generated.Element
        field :_doNotPerform, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_intent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :about, [Fhir.Generated.Reference], default: []
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :doNotPerform, :boolean
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :groupIdentifier, Fhir.Generated.Identifier
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :informationProvider, [Fhir.Generated.Reference], default: []
        field :intent, :string
        field :language, :string
        field :medium, [Fhir.Generated.CodeableConcept], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :payload, [Fhir.Generated.CommunicationRequestPayload], default: []
        field :priority, :string
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :recipient, [Fhir.Generated.Reference], default: []
        field :replaces, [Fhir.Generated.Reference], default: []
        field :requester, Fhir.Generated.Reference
        field :resourceType, :string, default: "CommunicationRequest"
        field :status, :string
        field :statusReason, Fhir.Generated.CodeableConcept
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
