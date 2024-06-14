defmodule Fhir.InventoryReportItem do
  use TypedStruct

  typedstruct do
    field(:category, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:item, Fhir.CodeableReference)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:quantity, Fhir.Quantity)
  end
end
