defmodule Fhir.v6().Reference do
  use TypedStruct

  typedstruct do
    field(:_display, Fhir.v6().Element)
    field(:_reference, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:display, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:reference, :string)
    field(:type, :string)
  end
end
