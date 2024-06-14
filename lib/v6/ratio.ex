defmodule Fhir.v6().Ratio do
  use TypedStruct

  typedstruct do
    field(:denominator, Fhir.v6().Quantity)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:numerator, Fhir.v6().Quantity)
  end
end
