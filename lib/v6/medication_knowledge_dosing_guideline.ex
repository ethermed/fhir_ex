defmodule Fhir.v6().MedicationKnowledgeDosingGuideline do
  use TypedStruct

  typedstruct do
    field(:administrationTreatment, Fhir.v6().CodeableConcept)
    field(:dosage, [Fhir.v6().MedicationKnowledgeDosage], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])

    field(:patientCharacteristic, [Fhir.v6().MedicationKnowledgePatientCharacteristic],
      default: []
    )

    field(:treatmentIntent, Fhir.v6().CodeableConcept)
  end
end
