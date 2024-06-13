defmodule Fhir.Generated.ClinicalUseDefinitionOtherTherapy do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :relationshipType, Fhir.Generated.CodeableConcept
        field :treatment, Fhir.Generated.CodeableReference
  end
end
