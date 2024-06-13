defmodule Fhir.Generated.MolecularSequenceStartingSequence do
  use TypedStruct

  typedstruct do
    field :_orientation, Fhir.Generated.Element
        field :_sequenceString, Fhir.Generated.Element
        field :_strand, Fhir.Generated.Element
        field :_windowEnd, Fhir.Generated.Element
        field :_windowStart, Fhir.Generated.Element
        field :chromosome, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :genomeAssembly, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :orientation, :string
        field :sequenceCodeableConcept, Fhir.Generated.CodeableConcept
        field :sequenceReference, Fhir.Generated.Reference
        field :sequenceString, :string
        field :strand, :string
        field :windowEnd, :float
        field :windowStart, :float
  end
end
