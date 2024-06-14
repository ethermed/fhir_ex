defmodule Fhir.InventoryReportInventoryListing do
  use TypedStruct

  typedstruct do
    field(:_countingDateTime, Fhir.Element)
    field(:countingDateTime, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:item, [Fhir.InventoryReportItem], default: [])
    field(:itemStatus, Fhir.CodeableConcept)
    field(:location, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
