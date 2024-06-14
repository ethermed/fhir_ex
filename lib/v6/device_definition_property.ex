defmodule Fhir.v6().DeviceDefinitionProperty do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:valueAttachment, Fhir.v6().Attachment)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueInteger, :float)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueRange, Fhir.v6().Range)
    field(:valueString, :string)
  end
end
