defmodule Fhir.InventoryItemCharacteristic do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_valueBoolean, Fhir.Element)
    field(:_valueDateTime, Fhir.Element)
    field(:_valueDecimal, Fhir.Element)
    field(:_valueInteger, Fhir.Element)
    field(:_valueString, Fhir.Element)
    field(:_valueUrl, Fhir.Element)
    field(:characteristicType, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:valueAddress, Fhir.Address)
    field(:valueAnnotation, Fhir.Annotation)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueDuration, Fhir.Duration)
    field(:valueInteger, :float)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueRange, Fhir.Range)
    field(:valueRatio, Fhir.Ratio)
    field(:valueString, :string)
    field(:valueUrl, :string)
  end
end
