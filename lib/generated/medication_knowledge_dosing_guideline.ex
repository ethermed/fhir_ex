defmodule Fhir.MedicationKnowledgeDosingGuideline do
  use TypedStruct

  typedstruct do
    field(:administrationTreatment, Fhir.CodeableConcept)
    field(:dosage, [Fhir.MedicationKnowledgeDosage], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:patientCharacteristic, [Fhir.MedicationKnowledgePatientCharacteristic], default: [])
    field(:treatmentIntent, Fhir.CodeableConcept)
  end
end
