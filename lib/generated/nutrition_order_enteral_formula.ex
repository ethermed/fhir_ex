defmodule Fhir.Generated.NutritionOrderEnteralFormula do
  use TypedStruct

  typedstruct do
    field :_administrationInstruction, Fhir.Generated.Element
        field :_baseFormulaProductName, Fhir.Generated.Element
        field :additive, [Fhir.Generated.NutritionOrderAdditive], default: []
        field :administration, [Fhir.Generated.NutritionOrderAdministration], default: []
        field :administrationInstruction, :string
        field :baseFormulaProductName, :string
        field :baseFormulaType, Fhir.Generated.CodeableReference
        field :caloricDensity, Fhir.Generated.Quantity
        field :deliveryDevice, [Fhir.Generated.CodeableReference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :maxVolumeToDeliver, Fhir.Generated.Quantity
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :routeOfAdministration, Fhir.Generated.CodeableConcept
  end
end
