defmodule Fhir.Generated.ResearchStudyAssociatedParty do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :classifier, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :party, Fhir.Generated.Reference
        field :period, [Fhir.Generated.Period], default: []
        field :role, Fhir.Generated.CodeableConcept
  end
end
