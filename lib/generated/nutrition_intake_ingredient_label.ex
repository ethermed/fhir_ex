defmodule Fhir.NutritionIntakeIngredientLabel do
  use TypedStruct

  typedstruct do
    field(:amount, Fhir.Quantity)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:nutrient, Fhir.CodeableReference)
  end
end
