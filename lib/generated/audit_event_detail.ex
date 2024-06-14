defmodule Fhir.AuditEventDetail do
  use TypedStruct

  typedstruct do
    field(:_valueBase64Binary, Fhir.Element)
    field(:_valueBoolean, Fhir.Element)
    field(:_valueDateTime, Fhir.Element)
    field(:_valueInteger, Fhir.Element)
    field(:_valueString, Fhir.Element)
    field(:_valueTime, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
    field(:valueBase64Binary, :string)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueDateTime, :string)
    field(:valueInteger, :float)
    field(:valuePeriod, Fhir.Period)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueRange, Fhir.Range)
    field(:valueRatio, Fhir.Ratio)
    field(:valueString, :string)
    field(:valueTime, :string)
  end
end
