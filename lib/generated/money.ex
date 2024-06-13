defmodule Fhir.Generated.Money do
  use TypedStruct

  typedstruct do
    field :_currency, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :currency, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :value, :decimal
  end
end
