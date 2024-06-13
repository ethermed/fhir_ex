defmodule Fhir.Generated.NutritionOrderAdditive do
  use TypedStruct

  typedstruct do
    field :_productName, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :productName, :string
        field :quantity, Fhir.Generated.Quantity
        field :type, Fhir.Generated.CodeableReference
  end
end
