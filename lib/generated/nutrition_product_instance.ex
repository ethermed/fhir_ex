defmodule Fhir.NutritionProductInstance do
  use TypedStruct

  typedstruct do
    field(:_expiry, Fhir.Element)
    field(:_lotNumber, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_useBy, Fhir.Element)
    field(:biologicalSourceEvent, Fhir.Identifier)
    field(:expiry, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:lotNumber, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:quantity, Fhir.Quantity)
    field(:useBy, :datetime)
  end
end
