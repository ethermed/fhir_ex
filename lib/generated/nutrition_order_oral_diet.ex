defmodule Fhir.NutritionOrderOralDiet do
  use TypedStruct

  typedstruct do
    field(:_instruction, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:fluidConsistencyType, [Fhir.CodeableConcept], default: [])
    field(:id, :string)
    field(:instruction, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:nutrient, [Fhir.NutritionOrderNutrient], default: [])
    field(:schedule, Fhir.NutritionOrderSchedule)
    field(:texture, [Fhir.NutritionOrderTexture], default: [])
    field(:type, [Fhir.CodeableConcept], default: [])
  end
end
