defmodule Fhir.v6().NutritionOrderEnteralFormula do
  use TypedStruct

  typedstruct do
    field(:_administrationInstruction, Fhir.v6().Element)
    field(:_baseFormulaProductName, Fhir.v6().Element)
    field(:additive, [Fhir.v6().NutritionOrderAdditive], default: [])
    field(:administration, [Fhir.v6().NutritionOrderAdministration], default: [])
    field(:administrationInstruction, :string)
    field(:baseFormulaProductName, :string)
    field(:baseFormulaType, Fhir.v6().CodeableReference)
    field(:caloricDensity, Fhir.v6().Quantity)
    field(:deliveryDevice, [Fhir.v6().CodeableReference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:maxVolumeToDeliver, Fhir.v6().Quantity)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:routeOfAdministration, Fhir.v6().CodeableConcept)
  end
end
