defmodule Fhir.Generated.InventoryItemName do
  use TypedStruct

  typedstruct do
    field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :language, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :nameType, Fhir.Generated.Coding
  end
end
