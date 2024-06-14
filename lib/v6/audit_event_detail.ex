defmodule Fhir.v6().AuditEventDetail do
  use TypedStruct

  typedstruct do
    field(:_valueBase64Binary, Fhir.v6().Element)
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueDateTime, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:_valueTime, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:valueBase64Binary, :string)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueDateTime, :string)
    field(:valueInteger, :float)
    field(:valuePeriod, Fhir.v6().Period)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueRange, Fhir.v6().Range)
    field(:valueRatio, Fhir.v6().Ratio)
    field(:valueString, :string)
    field(:valueTime, :string)
  end
end
