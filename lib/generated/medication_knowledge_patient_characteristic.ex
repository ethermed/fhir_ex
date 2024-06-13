defmodule Fhir.Generated.MedicationKnowledgePatientCharacteristic do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
  end
end
