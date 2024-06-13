defmodule Fhir.Generated.CitationTitle do
  use TypedStruct

  typedstruct do
    field :_text, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :language, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :text, :string
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
