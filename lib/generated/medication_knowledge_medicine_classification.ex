defmodule Fhir.Generated.MedicationKnowledgeMedicineClassification do
  use TypedStruct

  typedstruct do
    field :_sourceString, Fhir.Generated.Element
        field :_sourceUri, Fhir.Generated.Element
        field :classification, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :sourceString, :string
        field :sourceUri, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
