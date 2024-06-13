defmodule Fhir.Generated.RiskAssessmentPrediction do
  use TypedStruct

  typedstruct do
    field :_probabilityDecimal, Fhir.Generated.Element
        field :_rationale, Fhir.Generated.Element
        field :_relativeRisk, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :outcome, Fhir.Generated.CodeableConcept
        field :probabilityDecimal, :float
        field :probabilityRange, Fhir.Generated.Range
        field :qualitativeRisk, Fhir.Generated.CodeableConcept
        field :rationale, :string
        field :relativeRisk, :decimal
        field :whenPeriod, Fhir.Generated.Period
        field :whenRange, Fhir.Generated.Range
  end
end
