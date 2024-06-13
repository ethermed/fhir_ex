defmodule Fhir.Generated.MolecularSequenceEdit do
  use TypedStruct

  typedstruct do
    field :_end, Fhir.Generated.Element
        field :_replacedSequence, Fhir.Generated.Element
        field :_replacementSequence, Fhir.Generated.Element
        field :_start, Fhir.Generated.Element
        field :end, :float
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :replacedSequence, :string
        field :replacementSequence, :string
        field :start, :float
  end
end
