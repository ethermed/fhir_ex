defmodule Fhir.IngredientStrength do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_measurementPoint, Fhir.Element)
    field(:_textConcentration, Fhir.Element)
    field(:_textPresentation, Fhir.Element)
    field(:basis, Fhir.CodeableConcept)
    field(:concentrationCodeableConcept, Fhir.CodeableConcept)
    field(:concentrationQuantity, Fhir.Quantity)
    field(:concentrationRatio, Fhir.Ratio)
    field(:concentrationRatioRange, Fhir.RatioRange)
    field(:country, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:measurementPoint, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:presentationCodeableConcept, Fhir.CodeableConcept)
    field(:presentationQuantity, Fhir.Quantity)
    field(:presentationRatio, Fhir.Ratio)
    field(:presentationRatioRange, Fhir.RatioRange)
    field(:referenceStrength, [Fhir.IngredientReferenceStrength], default: [])
    field(:textConcentration, :string)
    field(:textPresentation, :string)
  end
end
