defmodule Fhir.CitationTitle do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_text, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :language, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
        field :text, :string
        field :type, [Fhir.CodeableConcept], default: []
  end
end
