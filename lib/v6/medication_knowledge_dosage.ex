defmodule Fhir.v6().MedicationKnowledgeDosage do
  use TypedStruct

  typedstruct do
    field(:dosage, [Fhir.v6().Dosage], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
