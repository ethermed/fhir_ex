defmodule Fhir.Generated.CitationPublishedIn do
  use TypedStruct

  typedstruct do
    field :_publisherLocation, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :publisher, Fhir.Generated.Reference
        field :publisherLocation, :string
        field :title, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
