defmodule Fhir.Generated.IngredientStrength do
  use TypedStruct

  typedstruct do
    field :_measurementPoint, Fhir.Generated.Element
        field :_textConcentration, Fhir.Generated.Element
        field :_textPresentation, Fhir.Generated.Element
        field :basis, Fhir.Generated.CodeableConcept
        field :concentrationCodeableConcept, Fhir.Generated.CodeableConcept
        field :concentrationQuantity, Fhir.Generated.Quantity
        field :concentrationRatio, Fhir.Generated.Ratio
        field :concentrationRatioRange, Fhir.Generated.RatioRange
        field :country, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :measurementPoint, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :presentationCodeableConcept, Fhir.Generated.CodeableConcept
        field :presentationQuantity, Fhir.Generated.Quantity
        field :presentationRatio, Fhir.Generated.Ratio
        field :presentationRatioRange, Fhir.Generated.RatioRange
        field :referenceStrength, [Fhir.Generated.IngredientReferenceStrength], default: []
        field :textConcentration, :string
        field :textPresentation, :string
  end
end
