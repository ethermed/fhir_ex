defmodule Fhir.Address do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_city, Fhir.Element
        field :_country, Fhir.Element
        field :_district, Fhir.Element
        field :_line, [Fhir.Element], default: []
        field :_postalCode, Fhir.Element
        field :_state, Fhir.Element
        field :_text, Fhir.Element
        field :_type, Fhir.Element
        field :_use, Fhir.Element
        field :city, :string
        field :country, :string
        field :district, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :line, [:string], default: []
        field :period, Fhir.Period
        field :postalCode, :string
        field :state, :string
        field :text, :string
        field :type, any()
        field :use, any()
  end
end
