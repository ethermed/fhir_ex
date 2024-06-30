defmodule Fhir.NutritionOrderAdditive do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_productName, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:productName, :string)
    field(:quantity, Fhir.Quantity)
    field(:type, Fhir.CodeableReference)
  end
end
