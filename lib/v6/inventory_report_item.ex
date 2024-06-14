defmodule Fhir.v6().InventoryReportItem do
  use TypedStruct

  typedstruct do
    field(:category, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:item, Fhir.v6().CodeableReference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:quantity, Fhir.v6().Quantity)
  end
end
