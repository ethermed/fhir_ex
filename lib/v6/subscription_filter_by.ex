defmodule Fhir.v6().SubscriptionFilterBy do
  use TypedStruct

  typedstruct do
    field(:_comparator, Fhir.v6().Element)
    field(:_filterParameter, Fhir.v6().Element)
    field(:_modifier, Fhir.v6().Element)
    field(:_resourceType, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:comparator, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:filterParameter, :string)
    field(:id, :string)
    field(:modifier, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resourceType, :string)
    field(:value, :string)
  end
end
