defmodule Fhir.Generated.MeasureReportStratum do
  use TypedStruct

  typedstruct do
    field :_measureScoreDateTime, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :component, [Fhir.Generated.MeasureReportComponent], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :measureScoreCodeableConcept, Fhir.Generated.CodeableConcept
        field :measureScoreDateTime, :string
        field :measureScoreDuration, Fhir.Generated.Duration
        field :measureScorePeriod, Fhir.Generated.Period
        field :measureScoreQuantity, Fhir.Generated.Quantity
        field :measureScoreRange, Fhir.Generated.Range
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :population, [Fhir.Generated.MeasureReportPopulation1], default: []
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueReference, Fhir.Generated.Reference
  end
end
