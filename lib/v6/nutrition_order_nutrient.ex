defmodule Fhir.v6().NutritionOrderNutrient do
  use TypedStruct

  typedstruct do
    field(:amount, Fhir.v6().Quantity)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifier, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
