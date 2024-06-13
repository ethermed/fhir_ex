defmodule Fhir.Generated.SubscriptionFilterBy do
  use TypedStruct

  typedstruct do
    field :_comparator, Fhir.Generated.Element
        field :_filterParameter, Fhir.Generated.Element
        field :_modifier, Fhir.Generated.Element
        field :_resourceType, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :comparator, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :filterParameter, :string
        field :id, :string
        field :modifier, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resourceType, :string
        field :value, :string
  end
end
