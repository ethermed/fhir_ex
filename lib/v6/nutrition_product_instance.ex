defmodule Fhir.v6().NutritionProductInstance do
  use TypedStruct

  typedstruct do
    field(:_expiry, Fhir.v6().Element)
    field(:_lotNumber, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_useBy, Fhir.v6().Element)
    field(:biologicalSourceEvent, Fhir.v6().Identifier)
    field(:expiry, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:lotNumber, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:quantity, Fhir.v6().Quantity)
    field(:useBy, :datetime)
  end
end
