defmodule Fhir.v6().Range do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:high, Fhir.v6().Quantity)
    field(:id, :string)
    field(:low, Fhir.v6().Quantity)
  end
end
