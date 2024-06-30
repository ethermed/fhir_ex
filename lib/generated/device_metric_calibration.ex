defmodule Fhir.DeviceMetricCalibration do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_state, Fhir.Element)
    field(:_time, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:state, :string)
    field(:time, :timestamp)
    field(:type, :string)
  end
end
