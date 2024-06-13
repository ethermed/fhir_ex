defmodule Fhir.Generated.NutritionOrderAdministration do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :quantity, Fhir.Generated.Quantity
        field :rateQuantity, Fhir.Generated.Quantity
        field :rateRatio, Fhir.Generated.Ratio
        field :schedule, Fhir.Generated.NutritionOrderSchedule2
  end
end
