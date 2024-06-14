defmodule Fhir.v6().CoverageEligibilityRequestDiagnosis do
  use TypedStruct

  typedstruct do
    field(:diagnosisCodeableConcept, Fhir.v6().CodeableConcept)
    field(:diagnosisReference, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
