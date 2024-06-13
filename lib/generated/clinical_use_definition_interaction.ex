defmodule Fhir.Generated.ClinicalUseDefinitionInteraction do
  use TypedStruct

  typedstruct do
    field :effect, Fhir.Generated.CodeableReference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :incidence, Fhir.Generated.CodeableConcept
        field :interactant, [Fhir.Generated.ClinicalUseDefinitionInteractant], default: []
        field :management, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
