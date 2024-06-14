defmodule Fhir.v6().MedicationKnowledgeMedicineClassification do
  use TypedStruct

  typedstruct do
    field(:_sourceString, Fhir.v6().Element)
    field(:_sourceUri, Fhir.v6().Element)
    field(:classification, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:sourceString, :string)
    field(:sourceUri, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
