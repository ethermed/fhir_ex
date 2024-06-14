defmodule Fhir.v6().NutritionOrderAdministration do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:quantity, Fhir.v6().Quantity)
    field(:rateQuantity, Fhir.v6().Quantity)
    field(:rateRatio, Fhir.v6().Ratio)
    field(:schedule, Fhir.v6().NutritionOrderSchedule2)
  end
end
