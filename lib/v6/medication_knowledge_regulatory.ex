defmodule Fhir.v6().MedicationKnowledgeRegulatory do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:maxDispense, Fhir.v6().MedicationKnowledgeMaxDispense)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:regulatoryAuthority, Fhir.v6().Reference)
    field(:schedule, [Fhir.v6().CodeableConcept], default: [])
    field(:substitution, [Fhir.v6().MedicationKnowledgeSubstitution], default: [])
  end
end
