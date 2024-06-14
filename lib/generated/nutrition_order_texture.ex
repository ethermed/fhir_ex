defmodule Fhir.NutritionOrderTexture do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:foodType, Fhir.CodeableConcept)
    field(:id, :string)
    field(:modifier, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end