defmodule Fhir.ClinicalUseDefinitionUndesirableEffect do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :classification, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :frequencyOfOccurrence, Fhir.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :symptomConditionEffect, Fhir.CodeableReference
  end
end
