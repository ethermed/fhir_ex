defmodule Fhir.Generated.SampledData do
  use TypedStruct

  typedstruct do
    field :_data, Fhir.Generated.Element
        field :_dimensions, Fhir.Generated.Element
        field :_factor, Fhir.Generated.Element
        field :_interval, Fhir.Generated.Element
        field :_intervalUnit, Fhir.Generated.Element
        field :_lowerLimit, Fhir.Generated.Element
        field :_offsets, Fhir.Generated.Element
        field :_upperLimit, Fhir.Generated.Element
        field :codeMap, :string
        field :data, :string
        field :dimensions, :float
        field :extension, [Fhir.Generated.Extension], default: []
        field :factor, :decimal
        field :id, :string
        field :interval, :decimal
        field :intervalUnit, :string
        field :lowerLimit, :decimal
        field :offsets, :string
        field :origin, Fhir.Generated.Quantity
        field :upperLimit, :decimal
  end
end
