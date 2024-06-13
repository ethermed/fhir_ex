defmodule Fhir.Generated.ImmunizationReaction do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_reported, Fhir.Generated.Element
        field :date, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :manifestation, Fhir.Generated.CodeableReference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reported, :boolean
  end
end
