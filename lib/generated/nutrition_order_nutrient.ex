defmodule Fhir.NutritionOrderNutrient do
  use TypedStruct

  typedstruct do
    field(:amount, Fhir.Quantity)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifier, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
