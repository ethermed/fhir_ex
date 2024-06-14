defmodule Fhir.InventoryItemAssociation do
  use TypedStruct

  typedstruct do
    field(:associationType, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:quantity, Fhir.Ratio)
    field(:relatedItem, Fhir.Reference)
  end
end