defmodule Fhir.Generated.DeviceMetric do
  use TypedStruct

  typedstruct do
    field :_category, Fhir.Generated.Element
        field :_color, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_operationalStatus, Fhir.Generated.Element
        field :calibration, [Fhir.Generated.DeviceMetricCalibration], default: []
        field :category, :string
        field :color, :string
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :device, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :measurementFrequency, Fhir.Generated.Quantity
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :operationalStatus, :string
        field :resourceType, :string, default: "DeviceMetric"
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
        field :unit, Fhir.Generated.CodeableConcept
  end
end
