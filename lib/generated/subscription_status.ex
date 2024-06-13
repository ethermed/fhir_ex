defmodule Fhir.Generated.SubscriptionStatus do
  use TypedStruct

  typedstruct do
    field :_eventsSinceSubscriptionStart, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :error, [Fhir.Generated.CodeableConcept], default: []
        field :eventsSinceSubscriptionStart, :integer
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :notificationEvent, [Fhir.Generated.SubscriptionStatusNotificationEvent], default: []
        field :resourceType, :string, default: "SubscriptionStatus"
        field :status, :string
        field :subscription, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :topic, :string
        field :type, :string
  end
end
