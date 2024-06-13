defmodule Fhir.Generated.StructureMapParameter do
  use TypedStruct

  typedstruct do
    field :_valueBoolean, Fhir.Generated.Element
        field :_valueDate, Fhir.Generated.Element
        field :_valueDateTime, Fhir.Generated.Element
        field :_valueDecimal, Fhir.Generated.Element
        field :_valueId, Fhir.Generated.Element
        field :_valueInteger, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :_valueTime, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :valueBoolean, :boolean
        field :valueDate, :string
        field :valueDateTime, :string
        field :valueDecimal, :float
        field :valueId, :string
        field :valueInteger, :float
        field :valueString, :string
        field :valueTime, :string
  end
end
