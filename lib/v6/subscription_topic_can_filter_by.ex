defmodule Fhir.v6().SubscriptionTopicCanFilterBy do
  use TypedStruct

  typedstruct do
    field(:_comparator, [Fhir.v6().Element], default: [])
    field(:_description, Fhir.v6().Element)
    field(:_filterDefinition, Fhir.v6().Element)
    field(:_filterParameter, Fhir.v6().Element)
    field(:_modifier, [Fhir.v6().Element], default: [])
    field(:_resource, Fhir.v6().Element)
    field(:comparator, [:string], default: [])
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:filterDefinition, :string)
    field(:filterParameter, :string)
    field(:id, :string)
    field(:modifier, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resource, :string)
  end
end
