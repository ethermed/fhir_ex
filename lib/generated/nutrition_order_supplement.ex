defmodule Fhir.NutritionOrderSupplement do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_instruction, Fhir.Element
        field :_productName, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :instruction, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :productName, :string
        field :quantity, Fhir.Quantity
        field :schedule, Fhir.NutritionOrderSchedule1
        field :type, Fhir.CodeableReference
  end
end
