defmodule Fhir.v6().Narrative do
  use TypedStruct

  typedstruct do
    field(:_status, Fhir.v6().Element)
    field(:div, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:status, any())
  end
end
