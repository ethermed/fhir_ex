defmodule Fhir.Generated.InventoryItemDescription do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :language, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
