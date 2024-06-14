defmodule Fhir.v6().IngredientSubstance do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.v6().CodeableReference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:strength, [Fhir.v6().IngredientStrength], default: [])
  end
end
