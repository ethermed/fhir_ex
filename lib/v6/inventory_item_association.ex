defmodule Fhir.v6().InventoryItemAssociation do
  use TypedStruct

  typedstruct do
    field(:associationType, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:quantity, Fhir.v6().Ratio)
    field(:relatedItem, Fhir.v6().Reference)
  end
end
