defmodule Fhir.v6().InventoryItemName do
  use TypedStruct

  typedstruct do
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:language, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:nameType, Fhir.v6().Coding)
  end
end
