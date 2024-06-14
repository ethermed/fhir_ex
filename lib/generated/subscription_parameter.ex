defmodule Fhir.SubscriptionParameter do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:value, :string)
  end
end
