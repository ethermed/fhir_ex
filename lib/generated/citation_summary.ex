defmodule Fhir.Generated.CitationSummary do
  use TypedStruct

  typedstruct do
    field :_text, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :style, Fhir.Generated.CodeableConcept
        field :text, :string
  end
end
