defmodule Fhir.Generated.CitationRelatesTo do
  use TypedStruct

  typedstruct do
    field :_citation, Fhir.Generated.Element
        field :_display, Fhir.Generated.Element
        field :_label, Fhir.Generated.Element
        field :_resource, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :citation, :string
        field :classifier, [Fhir.Generated.CodeableConcept], default: []
        field :display, :string
        field :document, Fhir.Generated.Attachment
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :label, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resource, :string
        field :resourceReference, Fhir.Generated.Reference
        field :type, :string
  end
end
