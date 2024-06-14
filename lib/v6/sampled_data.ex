defmodule Fhir.v6().SampledData do
  use TypedStruct

  typedstruct do
    field(:_data, Fhir.v6().Element)
    field(:_dimensions, Fhir.v6().Element)
    field(:_factor, Fhir.v6().Element)
    field(:_interval, Fhir.v6().Element)
    field(:_intervalUnit, Fhir.v6().Element)
    field(:_lowerLimit, Fhir.v6().Element)
    field(:_offsets, Fhir.v6().Element)
    field(:_upperLimit, Fhir.v6().Element)
    field(:codeMap, :string)
    field(:data, :string)
    field(:dimensions, :float)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:interval, :decimal)
    field(:intervalUnit, :string)
    field(:lowerLimit, :decimal)
    field(:offsets, :string)
    field(:origin, Fhir.v6().Quantity)
    field(:upperLimit, :decimal)
  end
end
