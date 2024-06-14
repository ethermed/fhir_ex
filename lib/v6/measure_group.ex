defmodule Fhir.v6().MeasureGroup do
  use TypedStruct

  typedstruct do
    field(:_basis, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_linkId, Fhir.v6().Element)
    field(:_rateAggregation, Fhir.v6().Element)
    field(:basis, :string)
    field(:code, Fhir.v6().CodeableConcept)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:improvementNotation, Fhir.v6().CodeableConcept)
    field(:library, [:string], default: [])
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:population, [Fhir.v6().MeasurePopulation], default: [])
    field(:rateAggregation, :string)
    field(:scoring, Fhir.v6().CodeableConcept)
    field(:scoringUnit, Fhir.v6().CodeableConcept)
    field(:stratifier, [Fhir.v6().MeasureStratifier], default: [])
    field(:subjectCodeableConcept, Fhir.v6().CodeableConcept)
    field(:subjectReference, Fhir.v6().Reference)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
