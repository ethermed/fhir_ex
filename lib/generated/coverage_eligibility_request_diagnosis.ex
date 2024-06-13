defmodule Fhir.Generated.CoverageEligibilityRequestDiagnosis do
  use TypedStruct

  typedstruct do
    field :diagnosisCodeableConcept, Fhir.Generated.CodeableConcept
        field :diagnosisReference, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
