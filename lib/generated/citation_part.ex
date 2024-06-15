defmodule Fhir.CitationPart do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_value, Fhir.Element
        field :baseCitation, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :type, Fhir.CodeableConcept
        field :value, :string
  end
end
