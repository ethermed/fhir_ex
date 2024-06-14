defmodule Fhir.v6().MedicationKnowledgeSubstitution do
  use TypedStruct

  typedstruct do
    field(:_allowed, Fhir.v6().Element)
    field(:allowed, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
