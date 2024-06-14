defmodule Fhir.DeviceProperty do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.Element)
    field(:_valueInteger, Fhir.Element)
    field(:_valueString, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
    field(:valueAttachment, Fhir.Attachment)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueInteger, :float)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueRange, Fhir.Range)
    field(:valueString, :string)
  end
end
