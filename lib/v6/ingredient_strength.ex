defmodule Fhir.v6().IngredientStrength do
  use TypedStruct

  typedstruct do
    field(:_measurementPoint, Fhir.v6().Element)
    field(:_textConcentration, Fhir.v6().Element)
    field(:_textPresentation, Fhir.v6().Element)
    field(:basis, Fhir.v6().CodeableConcept)
    field(:concentrationCodeableConcept, Fhir.v6().CodeableConcept)
    field(:concentrationQuantity, Fhir.v6().Quantity)
    field(:concentrationRatio, Fhir.v6().Ratio)
    field(:concentrationRatioRange, Fhir.v6().RatioRange)
    field(:country, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:measurementPoint, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:presentationCodeableConcept, Fhir.v6().CodeableConcept)
    field(:presentationQuantity, Fhir.v6().Quantity)
    field(:presentationRatio, Fhir.v6().Ratio)
    field(:presentationRatioRange, Fhir.v6().RatioRange)
    field(:referenceStrength, [Fhir.v6().IngredientReferenceStrength], default: [])
    field(:textConcentration, :string)
    field(:textPresentation, :string)
  end
end
