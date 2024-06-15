defmodule Fhir.DeviceMetric do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_category, Fhir.Element
        field :_color, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_operationalStatus, Fhir.Element
        field :calibration, [Fhir.DeviceMetricCalibration], default: []
        field :category, :string
        field :color, :string
        field :contained, [Fhir.ResourceList], default: []
        field :device, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :measurementFrequency, Fhir.Quantity
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :operationalStatus, :string
        field :resourceType, :string, default: "DeviceMetric"
        field :text, Fhir.Narrative
        field :type, Fhir.CodeableConcept
        field :unit, Fhir.CodeableConcept
  end
end
