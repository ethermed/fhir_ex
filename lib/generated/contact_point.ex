defmodule Fhir.Generated.ContactPoint do
  use TypedStruct

  typedstruct do
    field :_rank, Fhir.Generated.Element
        field :_system, Fhir.Generated.Element
        field :_use, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :period, Fhir.Generated.Period
        field :rank, :float
        field :system, any()
        field :use, any()
        field :value, :string
  end
end
