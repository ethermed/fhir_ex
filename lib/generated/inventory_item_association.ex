defmodule Fhir.Generated.InventoryItemAssociation do
  use TypedStruct

  typedstruct do
    field :associationType, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :quantity, Fhir.Generated.Ratio
        field :relatedItem, Fhir.Generated.Reference
  end
end
