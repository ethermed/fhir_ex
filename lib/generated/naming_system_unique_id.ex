defmodule Fhir.Generated.NamingSystemUniqueId do
  use TypedStruct

  typedstruct do
    field :_authoritative, Fhir.Generated.Element
        field :_comment, Fhir.Generated.Element
        field :_preferred, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :authoritative, :boolean
        field :comment, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :preferred, :boolean
        field :type, :string
        field :value, :string
  end
end
