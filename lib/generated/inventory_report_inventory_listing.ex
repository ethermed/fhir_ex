defmodule Fhir.Generated.InventoryReportInventoryListing do
  use TypedStruct

  typedstruct do
    field :_countingDateTime, Fhir.Generated.Element
        field :countingDateTime, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :item, [Fhir.Generated.InventoryReportItem], default: []
        field :itemStatus, Fhir.Generated.CodeableConcept
        field :location, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
