defmodule Fhir.Generated.SubscriptionTopicNotificationShape do
  use TypedStruct

  typedstruct do
    field :_include, [Fhir.Generated.Element], default: []
        field :_resource, Fhir.Generated.Element
        field :_revInclude, [Fhir.Generated.Element], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :include, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resource, :string
        field :revInclude, [:string], default: []
  end
end
