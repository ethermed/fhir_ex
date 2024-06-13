defmodule Fhir.Generated.Distance do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_comparator, Fhir.Generated.Element
        field :_system, Fhir.Generated.Element
        field :_unit, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :code, :string
        field :comparator, any()
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :system, :string
        field :unit, :string
        field :value, :decimal
  end
end
