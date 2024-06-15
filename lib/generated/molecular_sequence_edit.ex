defmodule Fhir.MolecularSequenceEdit do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_end, Fhir.Element
        field :_replacedSequence, Fhir.Element
        field :_replacementSequence, Fhir.Element
        field :_start, Fhir.Element
        field :end, :float
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :replacedSequence, :string
        field :replacementSequence, :string
        field :start, :float
  end
end
