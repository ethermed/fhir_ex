defmodule Fhir.Subscription do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_content, Fhir.Element
        field :_contentType, Fhir.Element
        field :_end, Fhir.Element
        field :_endpoint, Fhir.Element
        field :_heartbeatPeriod, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_maxCount, Fhir.Element
        field :_name, Fhir.Element
        field :_reason, Fhir.Element
        field :_status, Fhir.Element
        field :_timeout, Fhir.Element
        field :channelType, Fhir.Coding
        field :contact, [Fhir.ContactPoint], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :content, :string
        field :contentType, :string
        field :end, :timestamp
        field :endpoint, :string
        field :extension, [Fhir.Extension], default: []
        field :filterBy, [Fhir.SubscriptionFilterBy], default: []
        field :heartbeatPeriod, :float
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :managingEntity, Fhir.Reference
        field :maxCount, :float
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :parameter, [Fhir.SubscriptionParameter], default: []
        field :reason, :string
        field :resourceType, :string, default: "Subscription"
        field :status, :string
        field :text, Fhir.Narrative
        field :timeout, :float
        field :topic, :string
  end
end
