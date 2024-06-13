defmodule Fhir.Generated.MedicationKnowledgeSubstitution do
  use TypedStruct

  typedstruct do
    field :_allowed, Fhir.Generated.Element
        field :allowed, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
