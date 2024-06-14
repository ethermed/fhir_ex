defmodule Fhir.v6().MedicationKnowledgeDrugCharacteristic do
  use TypedStruct

  typedstruct do
    field(:_valueBase64Binary, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:valueAttachment, Fhir.v6().Attachment)
    field(:valueBase64Binary, :string)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueString, :string)
  end
end
