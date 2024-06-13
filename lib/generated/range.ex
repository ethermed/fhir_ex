defmodule Fhir.Generated.Range do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :high, Fhir.Generated.Quantity
        field :id, :string
        field :low, Fhir.Generated.Quantity
  end
end
