defmodule Fhir.MedicationKnowledgeDosage do
  use TypedStruct

  typedstruct do
    field(:dosage, [Fhir.Dosage], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
