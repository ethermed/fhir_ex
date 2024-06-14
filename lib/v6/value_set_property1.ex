defmodule Fhir.v6().ValueSetProperty1 do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueCode, Fhir.v6().Element)
    field(:_valueDateTime, Fhir.v6().Element)
    field(:_valueDecimal, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:code, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:subProperty, [Fhir.v6().ValueSetSubProperty], default: [])
    field(:valueBoolean, :boolean)
    field(:valueCode, :string)
    field(:valueCoding, Fhir.v6().Coding)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueInteger, :float)
    field(:valueString, :string)
  end
end
