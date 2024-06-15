defmodule Fhir.CodeSystemProperty1 do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_code, Fhir.Element
        field :_valueBoolean, Fhir.Element
        field :_valueCode, Fhir.Element
        field :_valueDateTime, Fhir.Element
        field :_valueDecimal, Fhir.Element
        field :_valueInteger, Fhir.Element
        field :_valueString, Fhir.Element
        field :code, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :valueBoolean, :boolean
        field :valueCode, :string
        field :valueCoding, Fhir.Coding
        field :valueDateTime, :string
        field :valueDecimal, :float
        field :valueInteger, :float
        field :valueString, :string
  end
end
