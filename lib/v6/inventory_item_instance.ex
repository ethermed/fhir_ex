defmodule Fhir.v6().InventoryItemInstance do
  use TypedStruct

  typedstruct do
    field(:_expiry, Fhir.v6().Element)
    field(:_lotNumber, Fhir.v6().Element)
    field(:expiry, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:location, Fhir.v6().Reference)
    field(:lotNumber, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:subject, Fhir.v6().Reference)
  end
end
