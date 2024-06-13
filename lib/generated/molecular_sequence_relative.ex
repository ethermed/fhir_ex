defmodule Fhir.Generated.MolecularSequenceRelative do
  use TypedStruct

  typedstruct do
    field :_ordinalPosition, Fhir.Generated.Element
        field :coordinateSystem, Fhir.Generated.CodeableConcept
        field :edit, [Fhir.Generated.MolecularSequenceEdit], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :ordinalPosition, :float
        field :sequenceRange, Fhir.Generated.Range
        field :startingSequence, Fhir.Generated.MolecularSequenceStartingSequence
  end
end
