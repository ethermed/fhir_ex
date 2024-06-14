defmodule Fhir.CoverageEligibilityRequestDiagnosis do
  use TypedStruct

  typedstruct do
    field(:diagnosisCodeableConcept, Fhir.CodeableConcept)
    field(:diagnosisReference, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
