defmodule Fhir.v6().SubscriptionTopicQueryCriteria do
  use TypedStruct

  typedstruct do
    field(:_current, Fhir.v6().Element)
    field(:_previous, Fhir.v6().Element)
    field(:_requireBoth, Fhir.v6().Element)
    field(:_resultForCreate, Fhir.v6().Element)
    field(:_resultForDelete, Fhir.v6().Element)
    field(:current, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:previous, :string)
    field(:requireBoth, :boolean)
    field(:resultForCreate, :string)
    field(:resultForDelete, :string)
  end
end
