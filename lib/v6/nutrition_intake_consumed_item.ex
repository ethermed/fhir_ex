defmodule Fhir.v6().NutritionIntakeConsumedItem do
  use TypedStruct

  typedstruct do
    field(:_notConsumed, Fhir.v6().Element)
    field(:amount, Fhir.v6().Quantity)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:notConsumed, :boolean)
    field(:notConsumedReason, Fhir.v6().CodeableConcept)
    field(:nutritionProduct, Fhir.v6().CodeableReference)
    field(:rate, Fhir.v6().Quantity)
    field(:schedule, Fhir.v6().Timing)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
