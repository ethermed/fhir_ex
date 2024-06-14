defmodule Fhir.v6().MeasureReportStratum do
  use TypedStruct

  typedstruct do
    field(:_measureScoreDateTime, Fhir.v6().Element)
    field(:_valueBoolean, Fhir.v6().Element)
    field(:component, [Fhir.v6().MeasureReportComponent], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:measureScoreCodeableConcept, Fhir.v6().CodeableConcept)
    field(:measureScoreDateTime, :string)
    field(:measureScoreDuration, Fhir.v6().Duration)
    field(:measureScorePeriod, Fhir.v6().Period)
    field(:measureScoreQuantity, Fhir.v6().Quantity)
    field(:measureScoreRange, Fhir.v6().Range)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:population, [Fhir.v6().MeasureReportPopulation1], default: [])
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueRange, Fhir.v6().Range)
    field(:valueReference, Fhir.v6().Reference)
  end
end
