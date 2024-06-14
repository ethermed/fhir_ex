defmodule Fhir.SubscriptionStatus do
  use TypedStruct

  typedstruct do
    field(:_eventsSinceSubscriptionStart, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:error, [Fhir.CodeableConcept], default: [])
    field(:eventsSinceSubscriptionStart, :integer)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:notificationEvent, [Fhir.SubscriptionStatusNotificationEvent], default: [])
    field(:resourceType, :string, default: "SubscriptionStatus")
    field(:status, :string)
    field(:subscription, Fhir.Reference)
    field(:text, Fhir.Narrative)
    field(:topic, :string)
    field(:type, :string)
  end
end
