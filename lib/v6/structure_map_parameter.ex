defmodule Fhir.v6().StructureMapParameter do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueDate, Fhir.v6().Element)
    field(:_valueDateTime, Fhir.v6().Element)
    field(:_valueDecimal, Fhir.v6().Element)
    field(:_valueId, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:_valueTime, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
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
