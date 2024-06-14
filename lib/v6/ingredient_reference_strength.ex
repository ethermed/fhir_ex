defmodule Fhir.v6().IngredientReferenceStrength do
  use TypedStruct

  typedstruct do
    field(:_measurementPoint, Fhir.v6().Element)
    field(:country, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:measurementPoint, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:strengthQuantity, Fhir.v6().Quantity)
    field(:strengthRatio, Fhir.v6().Ratio)
    field(:strengthRatioRange, Fhir.v6().RatioRange)
    field(:substance, Fhir.v6().CodeableReference)
  end
end
