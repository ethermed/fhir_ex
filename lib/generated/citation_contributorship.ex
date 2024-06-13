defmodule Fhir.Generated.CitationContributorship do
  use TypedStruct

  typedstruct do
    field :_complete, Fhir.Generated.Element
        field :complete, :boolean
        field :entry, [Fhir.Generated.CitationEntry], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :summary, [Fhir.Generated.CitationSummary1], default: []
  end
end
