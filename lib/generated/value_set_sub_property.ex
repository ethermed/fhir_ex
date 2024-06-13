defmodule Fhir.Generated.ValueSetSubProperty do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :_valueCode, Fhir.Generated.Element
        field :_valueDateTime, Fhir.Generated.Element
        field :_valueDecimal, Fhir.Generated.Element
        field :_valueInteger, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :code, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :valueBoolean, :boolean
        field :valueCode, :string
        field :valueCoding, Fhir.Generated.Coding
        field :valueDateTime, :string
        field :valueDecimal, :float
        field :valueInteger, :float
        field :valueString, :string
  end
end
