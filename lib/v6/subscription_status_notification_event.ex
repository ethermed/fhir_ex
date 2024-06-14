defmodule Fhir.v6().SubscriptionStatusNotificationEvent do
  use TypedStruct

  typedstruct do
    field(:_eventNumber, Fhir.v6().Element)
    field(:_timestamp, Fhir.v6().Element)
    field(:additionalContext, [Fhir.v6().Reference], default: [])
    field(:eventNumber, :integer)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:focus, Fhir.v6().Reference)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:timestamp, :timestamp)
  end
end
