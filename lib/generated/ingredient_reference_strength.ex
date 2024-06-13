defmodule Fhir.Generated.IngredientReferenceStrength do
  use TypedStruct

  typedstruct do
    field :_measurementPoint, Fhir.Generated.Element
        field :country, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :measurementPoint, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :strengthQuantity, Fhir.Generated.Quantity
        field :strengthRatio, Fhir.Generated.Ratio
        field :strengthRatioRange, Fhir.Generated.RatioRange
        field :substance, Fhir.Generated.CodeableReference
  end
end
