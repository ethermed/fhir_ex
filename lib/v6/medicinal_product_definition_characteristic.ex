defmodule Fhir.v6().MedicinalProductDefinitionCharacteristic do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueDate, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueMarkdown, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:valueAttachment, Fhir.v6().Attachment)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueDate, :string)
    field(:valueInteger, :float)
    field(:valueMarkdown, :string)
    field(:valueQuantity, Fhir.v6().Quantity)
  end
end
