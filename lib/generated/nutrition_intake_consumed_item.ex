defmodule Fhir.Generated.NutritionIntakeConsumedItem do
  use TypedStruct

  typedstruct do
    field :_notConsumed, Fhir.Generated.Element
        field :amount, Fhir.Generated.Quantity
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :notConsumed, :boolean
        field :notConsumedReason, Fhir.Generated.CodeableConcept
        field :nutritionProduct, Fhir.Generated.CodeableReference
        field :rate, Fhir.Generated.Quantity
        field :schedule, Fhir.Generated.Timing
        field :type, Fhir.Generated.CodeableConcept
  end
end
