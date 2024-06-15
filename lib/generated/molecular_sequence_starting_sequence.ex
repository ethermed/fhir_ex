defmodule Fhir.MolecularSequenceStartingSequence do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_orientation, Fhir.Element
        field :_sequenceString, Fhir.Element
        field :_strand, Fhir.Element
        field :_windowEnd, Fhir.Element
        field :_windowStart, Fhir.Element
        field :chromosome, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :genomeAssembly, Fhir.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :orientation, :string
        field :sequenceCodeableConcept, Fhir.CodeableConcept
        field :sequenceReference, Fhir.Reference
        field :sequenceString, :string
        field :strand, :string
        field :windowEnd, :float
        field :windowStart, :float
  end
end
