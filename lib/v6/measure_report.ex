defmodule Fhir.v6().MeasureReport do
  use TypedStruct

  typedstruct do
    field(:_dataUpdateType, Fhir.v6().Element)
    field(:_date, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:dataUpdateType, :string)
    field(:date, :datetime)
    field(:evaluatedResource, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:group, [Fhir.v6().MeasureReportGroup], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:improvementNotation, Fhir.v6().CodeableConcept)
    field(:inputParameters, Fhir.v6().Reference)
    field(:language, :string)
    field(:location, Fhir.v6().Reference)
    field(:measure, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:reporter, Fhir.v6().Reference)
    field(:reportingVendor, Fhir.v6().Reference)
    field(:resourceType, :string, default: "MeasureReport")
    field(:scoring, Fhir.v6().CodeableConcept)
    field(:status, :string)
    field(:subject, Fhir.v6().Reference)
    field(:supplementalData, [Fhir.v6().Reference], default: [])
    field(:text, Fhir.v6().Narrative)
    field(:type, :string)
  end
end
