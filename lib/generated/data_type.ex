defmodule Fhir.DataType do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
  end
end