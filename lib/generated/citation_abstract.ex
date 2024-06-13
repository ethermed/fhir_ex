defmodule Fhir.Generated.CitationAbstract do
  use TypedStruct

  typedstruct do
    field :_copyright, Fhir.Generated.Element
        field :_text, Fhir.Generated.Element
        field :copyright, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :language, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :text, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
