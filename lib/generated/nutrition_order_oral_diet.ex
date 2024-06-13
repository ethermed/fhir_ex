defmodule Fhir.Generated.NutritionOrderOralDiet do
  use TypedStruct

  typedstruct do
    field :_instruction, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :fluidConsistencyType, [Fhir.Generated.CodeableConcept], default: []
        field :id, :string
        field :instruction, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :nutrient, [Fhir.Generated.NutritionOrderNutrient], default: []
        field :schedule, Fhir.Generated.NutritionOrderSchedule
        field :texture, [Fhir.Generated.NutritionOrderTexture], default: []
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
