defmodule Fhir.v6().CitationSummary do
  use TypedStruct

  typedstruct do
    field(:_text, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:style, Fhir.v6().CodeableConcept)
    field(:text, :string)
  end
end
