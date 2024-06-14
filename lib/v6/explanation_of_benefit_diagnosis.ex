defmodule Fhir.v6().ExplanationOfBenefitDiagnosis do
  use TypedStruct

  typedstruct do
    field(:_sequence, Fhir.v6().Element)
    field(:diagnosisCodeableConcept, Fhir.v6().CodeableConcept)
    field(:diagnosisReference, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:onAdmission, Fhir.v6().CodeableConcept)
    field(:sequence, :float)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
