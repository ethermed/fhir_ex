defmodule Fhir.v6().NutritionOrderOralDiet do
  use TypedStruct

  typedstruct do
    field(:_instruction, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:fluidConsistencyType, [Fhir.v6().CodeableConcept], default: [])
    field(:id, :string)
    field(:instruction, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:nutrient, [Fhir.v6().NutritionOrderNutrient], default: [])
    field(:schedule, Fhir.v6().NutritionOrderSchedule)
    field(:texture, [Fhir.v6().NutritionOrderTexture], default: [])
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
