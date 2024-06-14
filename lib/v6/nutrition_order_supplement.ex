defmodule Fhir.v6().NutritionOrderSupplement do
  use TypedStruct

  typedstruct do
    field(:_instruction, Fhir.v6().Element)
    field(:_productName, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:instruction, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:productName, :string)
    field(:quantity, Fhir.v6().Quantity)
    field(:schedule, Fhir.v6().NutritionOrderSchedule1)
    field(:type, Fhir.v6().CodeableReference)
  end
end
