defmodule Fhir.MedicinalProductDefinitionCharacteristic do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.Element)
    field(:_valueDate, Fhir.Element)
    field(:_valueInteger, Fhir.Element)
    field(:_valueMarkdown, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
    field(:valueAttachment, Fhir.Attachment)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueDate, :string)
    field(:valueInteger, :float)
    field(:valueMarkdown, :string)
    field(:valueQuantity, Fhir.Quantity)
  end
end
