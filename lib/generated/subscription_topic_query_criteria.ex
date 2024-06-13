defmodule Fhir.Generated.SubscriptionTopicQueryCriteria do
  use TypedStruct

  typedstruct do
    field :_current, Fhir.Generated.Element
        field :_previous, Fhir.Generated.Element
        field :_requireBoth, Fhir.Generated.Element
        field :_resultForCreate, Fhir.Generated.Element
        field :_resultForDelete, Fhir.Generated.Element
        field :current, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :previous, :string
        field :requireBoth, :boolean
        field :resultForCreate, :string
        field :resultForDelete, :string
  end
end
