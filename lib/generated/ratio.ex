defmodule Fhir.Ratio do
  use TypedStruct

  typedstruct do
    field(:denominator, Fhir.Quantity)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:numerator, Fhir.Quantity)
  end
end