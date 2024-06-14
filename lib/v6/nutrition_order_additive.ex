defmodule Fhir.v6().NutritionOrderAdditive do
  use TypedStruct

  typedstruct do
    field(:_productName, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:productName, :string)
    field(:quantity, Fhir.v6().Quantity)
    field(:type, Fhir.v6().CodeableReference)
  end
end
