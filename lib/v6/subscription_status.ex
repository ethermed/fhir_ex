defmodule Fhir.v6().SubscriptionStatus do
  use TypedStruct

  typedstruct do
    field(:_eventsSinceSubscriptionStart, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:error, [Fhir.v6().CodeableConcept], default: [])
    field(:eventsSinceSubscriptionStart, :integer)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:notificationEvent, [Fhir.v6().SubscriptionStatusNotificationEvent], default: [])
    field(:resourceType, :string, default: "SubscriptionStatus")
    field(:status, :string)
    field(:subscription, Fhir.v6().Reference)
    field(:text, Fhir.v6().Narrative)
    field(:topic, :string)
    field(:type, :string)
  end
end
