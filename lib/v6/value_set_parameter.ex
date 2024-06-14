defmodule Fhir.v6().ValueSetParameter do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueCode, Fhir.v6().Element)
    field(:_valueDateTime, Fhir.v6().Element)
    field(:_valueDecimal, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:_valueUri, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:valueBoolean, :boolean)
    field(:valueCode, :string)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueInteger, :float)
    field(:valueString, :string)
    field(:valueUri, :string)
  end
end
