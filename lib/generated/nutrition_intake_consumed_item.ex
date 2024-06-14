defmodule Fhir.NutritionIntakeConsumedItem do
  use TypedStruct

  typedstruct do
    field(:_notConsumed, Fhir.Element)
    field(:amount, Fhir.Quantity)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:notConsumed, :boolean)
    field(:notConsumedReason, Fhir.CodeableConcept)
    field(:nutritionProduct, Fhir.CodeableReference)
    field(:rate, Fhir.Quantity)
    field(:schedule, Fhir.Timing)
    field(:type, Fhir.CodeableConcept)
  end
end
