defmodule Fhir.SampledData do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_data, Fhir.Element)
    field(:_dimensions, Fhir.Element)
    field(:_factor, Fhir.Element)
    field(:_interval, Fhir.Element)
    field(:_intervalUnit, Fhir.Element)
    field(:_lowerLimit, Fhir.Element)
    field(:_offsets, Fhir.Element)
    field(:_upperLimit, Fhir.Element)
    field(:codeMap, :string)
    field(:data, :string)
    field(:dimensions, :float)
    field(:extension, [Fhir.Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:interval, :decimal)
    field(:intervalUnit, :string)
    field(:lowerLimit, :decimal)
    field(:offsets, :string)
    field(:origin, Fhir.Quantity)
    field(:upperLimit, :decimal)
  end
end
