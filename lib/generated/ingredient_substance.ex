defmodule Fhir.IngredientSubstance do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.CodeableReference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:strength, [Fhir.IngredientStrength], default: [])
  end
end
