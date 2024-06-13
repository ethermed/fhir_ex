defmodule Fhir.Generated.NutritionIntakeIngredientLabel do
  use TypedStruct

  typedstruct do
    field :amount, Fhir.Generated.Quantity
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :nutrient, Fhir.Generated.CodeableReference
  end
end
