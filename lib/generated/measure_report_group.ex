defmodule Fhir.MeasureReportGroup do
  use TypedStruct

  typedstruct do
    field(:_linkId, Fhir.Element)
    field(:_measureScoreDateTime, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:linkId, :string)
    field(:measureScoreCodeableConcept, Fhir.CodeableConcept)
    field(:measureScoreDateTime, :string)
    field(:measureScoreDuration, Fhir.Duration)
    field(:measureScorePeriod, Fhir.Period)
    field(:measureScoreQuantity, Fhir.Quantity)
    field(:measureScoreRange, Fhir.Range)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:population, [Fhir.MeasureReportPopulation], default: [])
    field(:stratifier, [Fhir.MeasureReportStratifier], default: [])
    field(:subject, Fhir.Reference)
  end
end
