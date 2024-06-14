defmodule Fhir.v6().RiskAssessmentPrediction do
  use TypedStruct

  typedstruct do
    field(:_probabilityDecimal, Fhir.v6().Element)
    field(:_rationale, Fhir.v6().Element)
    field(:_relativeRisk, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:outcome, Fhir.v6().CodeableConcept)
    field(:probabilityDecimal, :float)
    field(:probabilityRange, Fhir.v6().Range)
    field(:qualitativeRisk, Fhir.v6().CodeableConcept)
    field(:rationale, :string)
    field(:relativeRisk, :decimal)
    field(:whenPeriod, Fhir.v6().Period)
    field(:whenRange, Fhir.v6().Range)
  end
end
