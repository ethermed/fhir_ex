defmodule Fhir.Generated.MedicationKnowledgeDosage do
  use TypedStruct

  typedstruct do
    field :dosage, [Fhir.Generated.Dosage], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
