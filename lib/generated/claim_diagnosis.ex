defmodule Fhir.ClaimDiagnosis do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_sequence, Fhir.Element)
    field(:diagnosisCodeableConcept, Fhir.CodeableConcept)
    field(:diagnosisReference, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:onAdmission, Fhir.CodeableConcept)
    field(:sequence, :float)
    field(:type, [Fhir.CodeableConcept], default: [])
  end
end
