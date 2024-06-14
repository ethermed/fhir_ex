defmodule Fhir.v6().AccountDiagnosis do
  use TypedStruct

  typedstruct do
    field(:_dateOfDiagnosis, Fhir.v6().Element)
    field(:_onAdmission, Fhir.v6().Element)
    field(:_sequence, Fhir.v6().Element)
    field(:condition, Fhir.v6().CodeableReference)
    field(:dateOfDiagnosis, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:onAdmission, :boolean)
    field(:packageCode, [Fhir.v6().CodeableConcept], default: [])
    field(:sequence, :float)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
