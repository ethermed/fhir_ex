defmodule Fhir.v6().Signature do
  use TypedStruct

  typedstruct do
    field(:_data, Fhir.v6().Element)
    field(:_sigFormat, Fhir.v6().Element)
    field(:_targetFormat, Fhir.v6().Element)
    field(:_when, Fhir.v6().Element)
    field(:data, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:onBehalfOf, Fhir.v6().Reference)
    field(:sigFormat, :string)
    field(:targetFormat, :string)
    field(:type, [Fhir.v6().Coding], default: [])
    field(:when, :timestamp)
    field(:who, Fhir.v6().Reference)
  end
end
