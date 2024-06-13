defmodule Fhir.Generated.DeviceMetricCalibration do
  use TypedStruct

  typedstruct do
    field :_state, Fhir.Generated.Element
        field :_time, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :state, :string
        field :time, :timestamp
        field :type, :string
  end
end
