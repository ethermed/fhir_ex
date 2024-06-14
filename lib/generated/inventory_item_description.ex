defmodule Fhir.InventoryItemDescription do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:language, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
