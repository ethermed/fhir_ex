defmodule Fhir.Generated.SubscriptionTopicEventTrigger do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_resource, Fhir.Generated.Element
        field :description, :string
        field :event, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resource, :string
  end
end
