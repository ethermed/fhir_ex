defmodule Fhir.UsageContext do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.Coding)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueRange, Fhir.Range)
    field(:valueReference, Fhir.Reference)
  end
end
