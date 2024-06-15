defmodule Fhir.ContactPoint do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_rank, Fhir.Element
        field :_system, Fhir.Element
        field :_use, Fhir.Element
        field :_value, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :period, Fhir.Period
        field :rank, :float
        field :system, any()
        field :use, any()
        field :value, :string
  end
end
