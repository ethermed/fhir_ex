defmodule Fhir.SubscriptionTopicResourceTrigger do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_fhirPathCriteria, Fhir.Element
        field :_resource, Fhir.Element
        field :_supportedInteraction, [Fhir.Element], default: []
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :fhirPathCriteria, :string
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :queryCriteria, Fhir.SubscriptionTopicQueryCriteria
        field :resource, :string
        field :supportedInteraction, [:string], default: []
  end
end
