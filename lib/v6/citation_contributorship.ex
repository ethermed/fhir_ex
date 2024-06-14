defmodule Fhir.v6().CitationContributorship do
  use TypedStruct

  typedstruct do
    field(:_complete, Fhir.v6().Element)
    field(:complete, :boolean)
    field(:entry, [Fhir.v6().CitationEntry], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:summary, [Fhir.v6().CitationSummary1], default: [])
  end
end
