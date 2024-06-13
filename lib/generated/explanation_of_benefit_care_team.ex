defmodule Fhir.Generated.ExplanationOfBenefitCareTeam do
  use TypedStruct

  typedstruct do
    field :_responsible, Fhir.Generated.Element
        field :_sequence, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :provider, Fhir.Generated.Reference
        field :responsible, :boolean
        field :role, Fhir.Generated.CodeableConcept
        field :sequence, :float
        field :specialty, Fhir.Generated.CodeableConcept
  end
end
