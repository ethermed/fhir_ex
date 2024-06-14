defmodule Fhir.v6().DeviceMetricCalibration do
  use TypedStruct

  typedstruct do
    field(:_state, Fhir.v6().Element)
    field(:_time, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:state, :string)
    field(:time, :timestamp)
    field(:type, :string)
  end
end
