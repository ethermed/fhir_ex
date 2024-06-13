defmodule Fhir.Generated.CitationWebLocation do
  use TypedStruct

  typedstruct do
    field :_url, Fhir.Generated.Element
        field :classifier, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :url, :string
  end
end
