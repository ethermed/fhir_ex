defmodule Fhir.v6().UsageContext do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.v6().Coding)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueRange, Fhir.v6().Range)
    field(:valueReference, Fhir.v6().Reference)
  end
end
