defmodule Fhir.v6().SubscriptionTopicNotificationShape do
  use TypedStruct

  typedstruct do
    field(:_include, [Fhir.v6().Element], default: [])
    field(:_resource, Fhir.v6().Element)
    field(:_revInclude, [Fhir.v6().Element], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:include, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resource, :string)
    field(:revInclude, [:string], default: [])
  end
end
