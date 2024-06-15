defmodule Fhir.SubscriptionFilterBy do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_comparator, Fhir.Element
        field :_filterParameter, Fhir.Element
        field :_modifier, Fhir.Element
        field :_resourceType, Fhir.Element
        field :_value, Fhir.Element
        field :comparator, :string
        field :extension, [Fhir.Extension], default: []
        field :filterParameter, :string
        field :id, :string
        field :modifier, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :resourceType, :string
        field :value, :string
  end
end
