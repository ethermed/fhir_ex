defmodule Fhir.v6().Money do
  use TypedStruct

  typedstruct do
    field(:_currency, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:currency, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:value, :decimal)
  end
end
