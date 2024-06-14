defmodule Fhir.v6().PrimitiveType do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
  end
end
