defmodule Fhir.Generated.SubscriptionStatusNotificationEvent do
  use TypedStruct

  typedstruct do
    field :_eventNumber, Fhir.Generated.Element
        field :_timestamp, Fhir.Generated.Element
        field :additionalContext, [Fhir.Generated.Reference], default: []
        field :eventNumber, :integer
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, Fhir.Generated.Reference
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :timestamp, :timestamp
  end
end
