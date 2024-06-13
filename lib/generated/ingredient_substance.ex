defmodule Fhir.Generated.IngredientSubstance do
  use TypedStruct

  typedstruct do
    field :code, Fhir.Generated.CodeableReference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :strength, [Fhir.Generated.IngredientStrength], default: []
  end
end
