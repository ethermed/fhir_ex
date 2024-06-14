defmodule Fhir.SubscriptionTopicQueryCriteria do
  use TypedStruct

  typedstruct do
    field(:_current, Fhir.Element)
    field(:_previous, Fhir.Element)
    field(:_requireBoth, Fhir.Element)
    field(:_resultForCreate, Fhir.Element)
    field(:_resultForDelete, Fhir.Element)
    field(:current, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:previous, :string)
    field(:requireBoth, :boolean)
    field(:resultForCreate, :string)
    field(:resultForDelete, :string)
  end
end
