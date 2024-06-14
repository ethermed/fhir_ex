defmodule Fhir.StructureMapParameter do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.Element)
    field(:_valueDate, Fhir.Element)
    field(:_valueDateTime, Fhir.Element)
    field(:_valueDecimal, Fhir.Element)
    field(:_valueId, Fhir.Element)
    field(:_valueInteger, Fhir.Element)
    field(:_valueString, Fhir.Element)
    field(:_valueTime, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:valueBoolean, :boolean)
    field(:valueDate, :string)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueId, :string)
    field(:valueInteger, :float)
    field(:valueString, :string)
    field(:valueTime, :string)
  end
end
