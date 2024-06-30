defmodule Fhir.IngredientSubstance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:code, Fhir.CodeableReference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:strength, [Fhir.IngredientStrength], default: [])
  end
end
