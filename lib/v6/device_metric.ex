defmodule Fhir.v6().DeviceMetric do
  use TypedStruct

  typedstruct do
    field(:_category, Fhir.v6().Element)
    field(:_color, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_operationalStatus, Fhir.v6().Element)
    field(:calibration, [Fhir.v6().DeviceMetricCalibration], default: [])
    field(:category, :string)
    field(:color, :string)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:device, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:measurementFrequency, Fhir.v6().Quantity)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:operationalStatus, :string)
    field(:resourceType, :string, default: "DeviceMetric")
    field(:text, Fhir.v6().Narrative)
    field(:type, Fhir.v6().CodeableConcept)
    field(:unit, Fhir.v6().CodeableConcept)
  end
end
