defmodule Fhir.v6().NutritionIntakeIngredientLabel do
  use TypedStruct

  typedstruct do
    field(:amount, Fhir.v6().Quantity)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:nutrient, Fhir.v6().CodeableReference)
  end
end
