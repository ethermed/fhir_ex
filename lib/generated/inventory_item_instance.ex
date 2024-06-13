defmodule Fhir.Generated.InventoryItemInstance do
  use TypedStruct

  typedstruct do
    field :_expiry, Fhir.Generated.Element
        field :_lotNumber, Fhir.Generated.Element
        field :expiry, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :location, Fhir.Generated.Reference
        field :lotNumber, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :subject, Fhir.Generated.Reference
  end
end
