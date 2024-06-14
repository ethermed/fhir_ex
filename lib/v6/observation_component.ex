defmodule Fhir.v6().ObservationComponent do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueDateTime, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:_valueTime, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:dataAbsentReason, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:interpretation, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:referenceRange, [Fhir.v6().ObservationReferenceRange], default: [])
    field(:valueAttachment, Fhir.v6().Attachment)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueDateTime, :string)
    field(:valueInteger, :float)
    field(:valuePeriod, Fhir.v6().Period)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueRange, Fhir.v6().Range)
    field(:valueRatio, Fhir.v6().Ratio)
    field(:valueReference, Fhir.v6().Reference)
    field(:valueSampledData, Fhir.v6().SampledData)
    field(:valueString, :string)
    field(:valueTime, :string)
  end
end
