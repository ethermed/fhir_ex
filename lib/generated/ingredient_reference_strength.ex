defmodule Fhir.IngredientReferenceStrength do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_measurementPoint, Fhir.Element)
    field(:country, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:measurementPoint, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:strengthQuantity, Fhir.Quantity)
    field(:strengthRatio, Fhir.Ratio)
    field(:strengthRatioRange, Fhir.RatioRange)
    field(:substance, Fhir.CodeableReference)
  end
end
