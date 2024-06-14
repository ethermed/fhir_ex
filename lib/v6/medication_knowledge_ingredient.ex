defmodule Fhir.v6().MedicationKnowledgeIngredient do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:item, Fhir.v6().CodeableReference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:strengthCodeableConcept, Fhir.v6().CodeableConcept)
    field(:strengthQuantity, Fhir.v6().Quantity)
    field(:strengthRatio, Fhir.v6().Ratio)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
