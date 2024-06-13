defmodule Fhir.Generated.MedicationKnowledgeDosingGuideline do
  use TypedStruct

  typedstruct do
    field :administrationTreatment, Fhir.Generated.CodeableConcept
        field :dosage, [Fhir.Generated.MedicationKnowledgeDosage], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :patientCharacteristic, [Fhir.Generated.MedicationKnowledgePatientCharacteristic], default: []
        field :treatmentIntent, Fhir.Generated.CodeableConcept
  end
end
