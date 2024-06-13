defmodule Fhir.Generated.NutritionProductIngredient do
  use TypedStruct

  typedstruct do
    field :amount, [Fhir.Generated.Ratio], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :item, Fhir.Generated.CodeableReference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
