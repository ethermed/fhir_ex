defmodule Fhir.Generated.MedicationKnowledgeRegulatory do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :maxDispense, Fhir.Generated.MedicationKnowledgeMaxDispense
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :regulatoryAuthority, Fhir.Generated.Reference
        field :schedule, [Fhir.Generated.CodeableConcept], default: []
        field :substitution, [Fhir.Generated.MedicationKnowledgeSubstitution], default: []
  end
end
