defmodule Fhir.MedicationKnowledgeMedicineClassification do
  use TypedStruct

  typedstruct do
    field(:_sourceString, Fhir.Element)
    field(:_sourceUri, Fhir.Element)
    field(:classification, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:sourceString, :string)
    field(:sourceUri, :string)
    field(:type, Fhir.CodeableConcept)
  end
end
