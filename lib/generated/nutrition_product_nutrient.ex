defmodule Fhir.NutritionProductNutrient do
  use TypedStruct

  typedstruct do
    field(:amount, [Fhir.Ratio], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:item, Fhir.CodeableReference)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
