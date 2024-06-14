defmodule Fhir.CitationContributorship do
  use TypedStruct

  typedstruct do
    field(:_complete, Fhir.Element)
    field(:complete, :boolean)
    field(:entry, [Fhir.CitationEntry], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:summary, [Fhir.CitationSummary1], default: [])
  end
end
