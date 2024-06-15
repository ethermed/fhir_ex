defmodule Fhir.CitationPublishedIn do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_publisherLocation, Fhir.Element
        field :_title, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :publisher, Fhir.Reference
        field :publisherLocation, :string
        field :title, :string
        field :type, Fhir.CodeableConcept
  end
end
