defmodule Fhir.NutritionOrderEnteralFormula do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_administrationInstruction, Fhir.Element
        field :_baseFormulaProductName, Fhir.Element
        field :additive, [Fhir.NutritionOrderAdditive], default: []
        field :administration, [Fhir.NutritionOrderAdministration], default: []
        field :administrationInstruction, :string
        field :baseFormulaProductName, :string
        field :baseFormulaType, Fhir.CodeableReference
        field :caloricDensity, Fhir.Quantity
        field :deliveryDevice, [Fhir.CodeableReference], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :maxVolumeToDeliver, Fhir.Quantity
        field :modifierExtension, [Fhir.Extension], default: []
        field :routeOfAdministration, Fhir.CodeableConcept
  end
end
