defmodule Fhir.ImmunizationReaction do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_date, Fhir.Element
        field :_reported, Fhir.Element
        field :date, :datetime
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :manifestation, Fhir.CodeableReference
        field :modifierExtension, [Fhir.Extension], default: []
        field :reported, :boolean
  end
end
