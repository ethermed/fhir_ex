defmodule Fhir.v6().InventoryReportInventoryListing do
  use TypedStruct

  typedstruct do
    field(:_countingDateTime, Fhir.v6().Element)
    field(:countingDateTime, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:item, [Fhir.v6().InventoryReportItem], default: [])
    field(:itemStatus, Fhir.v6().CodeableConcept)
    field(:location, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
