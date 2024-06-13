defmodule Fhir.Generated.ClinicalUseDefinitionUndesirableEffect do
  use TypedStruct

  typedstruct do
    field :classification, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :frequencyOfOccurrence, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :symptomConditionEffect, Fhir.Generated.CodeableReference
  end
end
