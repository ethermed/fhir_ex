defmodule Fhir.v6().CitationPublishedIn do
  use TypedStruct

  typedstruct do
    field(:_publisherLocation, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:publisher, Fhir.v6().Reference)
    field(:publisherLocation, :string)
    field(:title, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
