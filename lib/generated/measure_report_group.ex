defmodule Fhir.Generated.MeasureReportGroup do
  use TypedStruct

  typedstruct do
    field :_linkId, Fhir.Generated.Element
        field :_measureScoreDateTime, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :linkId, :string
        field :measureScoreCodeableConcept, Fhir.Generated.CodeableConcept
        field :measureScoreDateTime, :string
        field :measureScoreDuration, Fhir.Generated.Duration
        field :measureScorePeriod, Fhir.Generated.Period
        field :measureScoreQuantity, Fhir.Generated.Quantity
        field :measureScoreRange, Fhir.Generated.Range
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :population, [Fhir.Generated.MeasureReportPopulation], default: []
        field :stratifier, [Fhir.Generated.MeasureReportStratifier], default: []
        field :subject, Fhir.Generated.Reference
  end
end
