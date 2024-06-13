defmodule Fhir.Generated.Ratio do
  use TypedStruct

  typedstruct do
    field :denominator, Fhir.Generated.Quantity
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :numerator, Fhir.Generated.Quantity
  end
end
