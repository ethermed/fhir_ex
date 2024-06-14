defmodule Fhir.CitationVersion do
  use TypedStruct

  typedstruct do
    field(:_value, Fhir.Element)
    field(:baseCitation, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:value, :string)
  end
end