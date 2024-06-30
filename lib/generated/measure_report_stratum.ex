defmodule Fhir.MeasureReportStratum do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_measureScoreDateTime, Fhir.Element)
    field(:_valueBoolean, Fhir.Element)
    field(:component, [Fhir.MeasureReportComponent], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:measureScoreCodeableConcept, Fhir.CodeableConcept)
    field(:measureScoreDateTime, :string)
    field(:measureScoreDuration, Fhir.Duration)
    field(:measureScorePeriod, Fhir.Period)
    field(:measureScoreQuantity, Fhir.Quantity)
    field(:measureScoreRange, Fhir.Range)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:population, [Fhir.MeasureReportPopulation1], default: [])
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueRange, Fhir.Range)
    field(:valueReference, Fhir.Reference)
  end
end
