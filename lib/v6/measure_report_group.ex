defmodule Fhir.v6().MeasureReportGroup do
  use TypedStruct

  typedstruct do
    field(:_linkId, Fhir.v6().Element)
    field(:_measureScoreDateTime, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:linkId, :string)
    field(:measureScoreCodeableConcept, Fhir.v6().CodeableConcept)
    field(:measureScoreDateTime, :string)
    field(:measureScoreDuration, Fhir.v6().Duration)
    field(:measureScorePeriod, Fhir.v6().Period)
    field(:measureScoreQuantity, Fhir.v6().Quantity)
    field(:measureScoreRange, Fhir.v6().Range)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:population, [Fhir.v6().MeasureReportPopulation], default: [])
    field(:stratifier, [Fhir.v6().MeasureReportStratifier], default: [])
    field(:subject, Fhir.v6().Reference)
  end
end
