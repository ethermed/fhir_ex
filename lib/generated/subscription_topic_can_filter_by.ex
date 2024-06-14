defmodule Fhir.SubscriptionTopicCanFilterBy do
  use TypedStruct

  typedstruct do
    field(:_comparator, [Fhir.Element], default: [])
    field(:_description, Fhir.Element)
    field(:_filterDefinition, Fhir.Element)
    field(:_filterParameter, Fhir.Element)
    field(:_modifier, [Fhir.Element], default: [])
    field(:_resource, Fhir.Element)
    field(:comparator, [:string], default: [])
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:filterDefinition, :string)
    field(:filterParameter, :string)
    field(:id, :string)
    field(:modifier, [:string], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resource, :string)
  end
end
