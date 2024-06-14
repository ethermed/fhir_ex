defmodule Fhir.v6().NutritionProductIngredient do
  use TypedStruct

  typedstruct do
    field(:amount, [Fhir.v6().Ratio], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:item, Fhir.v6().CodeableReference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
