defmodule Fhir.v6().NutritionOrderTexture do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:foodType, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:modifier, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
