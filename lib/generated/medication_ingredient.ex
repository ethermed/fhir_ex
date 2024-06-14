defmodule Fhir.MedicationIngredient do
  use TypedStruct

  typedstruct do
    field(:_isActive, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:isActive, :boolean)
    field(:item, Fhir.CodeableReference)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:strengthCodeableConcept, Fhir.CodeableConcept)
    field(:strengthQuantity, Fhir.Quantity)
    field(:strengthRatio, Fhir.Ratio)
  end
end
