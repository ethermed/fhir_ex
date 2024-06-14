defmodule Fhir.RatioRange do
  use TypedStruct

  typedstruct do
    field(:denominator, Fhir.Quantity)
    field(:extension, [Fhir.Extension], default: [])
    field(:highNumerator, Fhir.Quantity)
    field(:id, :string)
    field(:lowNumerator, Fhir.Quantity)
  end
end