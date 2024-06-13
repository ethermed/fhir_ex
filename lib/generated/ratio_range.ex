defmodule Fhir.Generated.RatioRange do
  use TypedStruct

  typedstruct do
    field :denominator, Fhir.Generated.Quantity
        field :extension, [Fhir.Generated.Extension], default: []
        field :highNumerator, Fhir.Generated.Quantity
        field :id, :string
        field :lowNumerator, Fhir.Generated.Quantity
  end
end
