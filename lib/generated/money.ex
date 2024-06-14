defmodule Fhir.Money do
  use TypedStruct

  typedstruct do
    field(:_currency, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:currency, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:value, :decimal)
  end
end
