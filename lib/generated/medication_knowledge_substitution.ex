defmodule Fhir.MedicationKnowledgeSubstitution do
  use TypedStruct

  typedstruct do
    field(:_allowed, Fhir.Element)
    field(:allowed, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
