defmodule Fhir.EvidenceReportCharacteristic do
  use TypedStruct

  typedstruct do
    field(:_exclude, Fhir.Element)
    field(:_valueBoolean, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:exclude, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueRange, Fhir.Range)
    field(:valueReference, Fhir.Reference)
  end
end
