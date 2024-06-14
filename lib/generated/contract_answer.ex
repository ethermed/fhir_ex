defmodule Fhir.ContractAnswer do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.Element)
    field(:_valueDate, Fhir.Element)
    field(:_valueDateTime, Fhir.Element)
    field(:_valueDecimal, Fhir.Element)
    field(:_valueInteger, Fhir.Element)
    field(:_valueString, Fhir.Element)
    field(:_valueTime, Fhir.Element)
    field(:_valueUri, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:valueAttachment, Fhir.Attachment)
    field(:valueBoolean, :boolean)
    field(:valueCoding, Fhir.Coding)
    field(:valueDate, :string)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueInteger, :float)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueReference, Fhir.Reference)
    field(:valueString, :string)
    field(:valueTime, :string)
    field(:valueUri, :string)
  end
end
