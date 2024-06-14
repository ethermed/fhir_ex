defmodule Fhir.RiskAssessmentPrediction do
  use TypedStruct

  typedstruct do
    field(:_probabilityDecimal, Fhir.Element)
    field(:_rationale, Fhir.Element)
    field(:_relativeRisk, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:outcome, Fhir.CodeableConcept)
    field(:probabilityDecimal, :float)
    field(:probabilityRange, Fhir.Range)
    field(:qualitativeRisk, Fhir.CodeableConcept)
    field(:rationale, :string)
    field(:relativeRisk, :decimal)
    field(:whenPeriod, Fhir.Period)
    field(:whenRange, Fhir.Range)
  end
end
