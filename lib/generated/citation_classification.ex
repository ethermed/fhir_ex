defmodule Fhir.CitationClassification do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :classifier, [Fhir.CodeableConcept], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :type, Fhir.CodeableConcept
  end
end
