defmodule Fhir.Signature do
  use TypedStruct

  typedstruct do
    field(:_data, Fhir.Element)
    field(:_sigFormat, Fhir.Element)
    field(:_targetFormat, Fhir.Element)
    field(:_when, Fhir.Element)
    field(:data, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:onBehalfOf, Fhir.Reference)
    field(:sigFormat, :string)
    field(:targetFormat, :string)
    field(:type, [Fhir.Coding], default: [])
    field(:when, :timestamp)
    field(:who, Fhir.Reference)
  end
end
