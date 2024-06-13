defmodule Fhir.Generated.Subscription do
  use TypedStruct

  typedstruct do
    field :_content, Fhir.Generated.Element
        field :_contentType, Fhir.Generated.Element
        field :_end, Fhir.Generated.Element
        field :_endpoint, Fhir.Generated.Element
        field :_heartbeatPeriod, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_maxCount, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_reason, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_timeout, Fhir.Generated.Element
        field :channelType, Fhir.Generated.Coding
        field :contact, [Fhir.Generated.ContactPoint], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :content, :string
        field :contentType, :string
        field :end, :timestamp
        field :endpoint, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :filterBy, [Fhir.Generated.SubscriptionFilterBy], default: []
        field :heartbeatPeriod, :float
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :managingEntity, Fhir.Generated.Reference
        field :maxCount, :float
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :parameter, [Fhir.Generated.SubscriptionParameter], default: []
        field :reason, :string
        field :resourceType, :string, default: "Subscription"
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :timeout, :float
        field :topic, :string
  end
end
