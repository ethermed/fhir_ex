defmodule Fhir.v6().ContractAnswer do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueDate, Fhir.v6().Element)
    field(:_valueDateTime, Fhir.v6().Element)
    field(:_valueDecimal, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:_valueTime, Fhir.v6().Element)
    field(:_valueUri, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:valueAttachment, Fhir.v6().Attachment)
    field(:valueBoolean, :boolean)
    field(:valueCoding, Fhir.v6().Coding)
    field(:valueDate, :string)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueInteger, :float)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueReference, Fhir.v6().Reference)
    field(:valueString, :string)
    field(:valueTime, :string)
    field(:valueUri, :string)
  end
end
