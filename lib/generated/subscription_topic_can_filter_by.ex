defmodule Fhir.Generated.SubscriptionTopicCanFilterBy do
  use TypedStruct

  typedstruct do
    field :_comparator, [Fhir.Generated.Element], default: []
        field :_description, Fhir.Generated.Element
        field :_filterDefinition, Fhir.Generated.Element
        field :_filterParameter, Fhir.Generated.Element
        field :_modifier, [Fhir.Generated.Element], default: []
        field :_resource, Fhir.Generated.Element
        field :comparator, [:string], default: []
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :filterDefinition, :string
        field :filterParameter, :string
        field :id, :string
        field :modifier, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resource, :string
  end
end
