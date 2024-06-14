defmodule Fhir.v6().MeasureReportComponent do
  use TypedStruct

  typedstruct do
    field(:_linkId, Fhir.v6().Element)
    field(:_valueBoolean, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueRange, Fhir.v6().Range)
    field(:valueReference, Fhir.v6().Reference)
  end
end
