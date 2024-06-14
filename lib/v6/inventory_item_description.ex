defmodule Fhir.v6().InventoryItemDescription do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:language, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
