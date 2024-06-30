defmodule Fhir.NutritionOrderAdministration do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:quantity, Fhir.Quantity)
    field(:rateQuantity, Fhir.Quantity)
    field(:rateRatio, Fhir.Ratio)
    field(:schedule, Fhir.NutritionOrderSchedule2)
  end
end
