defmodule Fhir.v6().RatioRange do
  use TypedStruct

  typedstruct do
    field(:denominator, Fhir.v6().Quantity)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:highNumerator, Fhir.v6().Quantity)
    field(:id, :string)
    field(:lowNumerator, Fhir.v6().Quantity)
  end
end
