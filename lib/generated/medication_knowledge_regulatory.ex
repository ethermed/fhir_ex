defmodule Fhir.MedicationKnowledgeRegulatory do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:maxDispense, Fhir.MedicationKnowledgeMaxDispense)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:regulatoryAuthority, Fhir.Reference)
    field(:schedule, [Fhir.CodeableConcept], default: [])
    field(:substitution, [Fhir.MedicationKnowledgeSubstitution], default: [])
  end
end
