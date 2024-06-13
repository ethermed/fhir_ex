defmodule Fhir.Generated.NutritionOrderSupplement do
  use TypedStruct

  typedstruct do
    field :_instruction, Fhir.Generated.Element
        field :_productName, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :instruction, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :productName, :string
        field :quantity, Fhir.Generated.Quantity
        field :schedule, Fhir.Generated.NutritionOrderSchedule1
        field :type, Fhir.Generated.CodeableReference
  end
end
