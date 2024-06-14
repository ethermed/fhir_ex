defmodule Fhir.v6().MedicationIngredient do
  use TypedStruct

  typedstruct do
    field(:_isActive, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:isActive, :boolean)
    field(:item, Fhir.v6().CodeableReference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:strengthCodeableConcept, Fhir.v6().CodeableConcept)
    field(:strengthQuantity, Fhir.v6().Quantity)
    field(:strengthRatio, Fhir.v6().Ratio)
  end
end
