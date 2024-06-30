defmodule Fhir.ObservationComponent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_valueBoolean, Fhir.Element)
    field(:_valueDateTime, Fhir.Element)
    field(:_valueInteger, Fhir.Element)
    field(:_valueString, Fhir.Element)
    field(:_valueTime, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:dataAbsentReason, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:interpretation, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:referenceRange, [Fhir.ObservationReferenceRange], default: [])
    field(:valueAttachment, Fhir.Attachment)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueDateTime, :string)
    field(:valueInteger, :float)
    field(:valuePeriod, Fhir.Period)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueRange, Fhir.Range)
    field(:valueRatio, Fhir.Ratio)
    field(:valueReference, Fhir.Reference)
    field(:valueSampledData, Fhir.SampledData)
    field(:valueString, :string)
    field(:valueTime, :string)
  end
end
