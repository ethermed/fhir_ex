defmodule Fhir.SubscriptionStatusNotificationEvent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_eventNumber, Fhir.Element)
    field(:_timestamp, Fhir.Element)
    field(:additionalContext, [Fhir.Reference], default: [])
    field(:eventNumber, :integer)
    field(:extension, [Fhir.Extension], default: [])
    field(:focus, Fhir.Reference)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:timestamp, :timestamp)
  end
end
