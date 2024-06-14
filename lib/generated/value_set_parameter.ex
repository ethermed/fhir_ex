defmodule Fhir.ValueSetParameter do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.Element)
    field(:_valueBoolean, Fhir.Element)
    field(:_valueCode, Fhir.Element)
    field(:_valueDateTime, Fhir.Element)
    field(:_valueDecimal, Fhir.Element)
    field(:_valueInteger, Fhir.Element)
    field(:_valueString, Fhir.Element)
    field(:_valueUri, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
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
