defmodule Fhir.Reference do
  use TypedStruct

  typedstruct do
    field(:_display, Fhir.Element)
    field(:_reference, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:display, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:reference, :string)
    field(:type, :string)
  end
end
