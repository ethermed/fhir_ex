defmodule Fhir.Generated.SubscriptionTopicResourceTrigger do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_fhirPathCriteria, Fhir.Generated.Element
        field :_resource, Fhir.Generated.Element
        field :_supportedInteraction, [Fhir.Generated.Element], default: []
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :fhirPathCriteria, :string
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :queryCriteria, Fhir.Generated.SubscriptionTopicQueryCriteria
        field :resource, :string
        field :supportedInteraction, [:string], default: []
  end
end
