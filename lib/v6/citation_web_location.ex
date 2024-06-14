defmodule Fhir.v6().CitationWebLocation do
  use TypedStruct

  typedstruct do
    field(:_url, Fhir.v6().Element)
    field(:classifier, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:url, :string)
  end
end
