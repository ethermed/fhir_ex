defmodule Fhir.Range do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:high, Fhir.Quantity)
    field(:id, :string)
    field(:low, Fhir.Quantity)
  end
end
