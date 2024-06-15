defmodule Fhir.InventoryItemInstance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_expiry, Fhir.Element
        field :_lotNumber, Fhir.Element
        field :expiry, :datetime
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :location, Fhir.Reference
        field :lotNumber, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :subject, Fhir.Reference
  end
end
