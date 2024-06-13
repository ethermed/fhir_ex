defmodule Fhir.Generated.InventoryReportItem do
  use TypedStruct

  typedstruct do
    field :category, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :item, Fhir.Generated.CodeableReference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :quantity, Fhir.Generated.Quantity
  end
end
