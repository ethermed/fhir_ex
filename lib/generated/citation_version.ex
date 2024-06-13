defmodule Fhir.Generated.CitationVersion do
  use TypedStruct

  typedstruct do
    field :_value, Fhir.Generated.Element
        field :baseCitation, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :value, :string
  end
end
