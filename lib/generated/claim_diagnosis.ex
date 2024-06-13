defmodule Fhir.Generated.ClaimDiagnosis do
  use TypedStruct

  typedstruct do
    field :_sequence, Fhir.Generated.Element
        field :diagnosisCodeableConcept, Fhir.Generated.CodeableConcept
        field :diagnosisReference, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :onAdmission, Fhir.Generated.CodeableConcept
        field :sequence, :float
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
