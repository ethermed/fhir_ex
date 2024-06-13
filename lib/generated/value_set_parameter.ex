defmodule Fhir.Generated.ValueSetParameter do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :_valueCode, Fhir.Generated.Element
        field :_valueDateTime, Fhir.Generated.Element
        field :_valueDecimal, Fhir.Generated.Element
        field :_valueInteger, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :_valueUri, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :valueBoolean, :boolean
        field :valueCode, :string
        field :valueDateTime, :string
        field :valueDecimal, :float
        field :valueInteger, :float
        field :valueString, :string
        field :valueUri, :string
  end
end
