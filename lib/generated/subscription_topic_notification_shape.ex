defmodule Fhir.SubscriptionTopicNotificationShape do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_include, [Fhir.Element], default: []
        field :_resource, Fhir.Element
        field :_revInclude, [Fhir.Element], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :include, [:string], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :resource, :string
        field :revInclude, [:string], default: []
  end
end
