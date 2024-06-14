defmodule Fhir.v6().SupplyDeliverySuppliedItem do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:itemCodeableConcept, Fhir.v6().CodeableConcept)
    field(:itemReference, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:quantity, Fhir.v6().Quantity)
  end
end
