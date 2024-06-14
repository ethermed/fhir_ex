defmodule Fhir.v6().InventoryItemCharacteristic do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueDateTime, Fhir.v6().Element)
    field(:_valueDecimal, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:_valueUrl, Fhir.v6().Element)
    field(:characteristicType, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:valueAddress, Fhir.v6().Address)
    field(:valueAnnotation, Fhir.v6().Annotation)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueDuration, Fhir.v6().Duration)
    field(:valueInteger, :float)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueRange, Fhir.v6().Range)
    field(:valueRatio, Fhir.v6().Ratio)
    field(:valueString, :string)
    field(:valueUrl, :string)
  end
end
