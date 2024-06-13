defmodule Fhir.Generated.NutritionOrderNutrient do
  use TypedStruct

  typedstruct do
    field :amount, Fhir.Generated.Quantity
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifier, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
