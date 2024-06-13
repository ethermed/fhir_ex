defmodule Fhir.Generated.Address do
  use TypedStruct

  typedstruct do
    field :_city, Fhir.Generated.Element
        field :_country, Fhir.Generated.Element
        field :_district, Fhir.Generated.Element
        field :_line, [Fhir.Generated.Element], default: []
        field :_postalCode, Fhir.Generated.Element
        field :_state, Fhir.Generated.Element
        field :_text, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_use, Fhir.Generated.Element
        field :city, :string
        field :country, :string
        field :district, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :line, [:string], default: []
        field :period, Fhir.Generated.Period
        field :postalCode, :string
        field :state, :string
        field :text, :string
        field :type, any()
        field :use, any()
  end
end
