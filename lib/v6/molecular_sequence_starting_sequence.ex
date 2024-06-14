defmodule Fhir.v6().MolecularSequenceStartingSequence do
  use TypedStruct

  typedstruct do
    field(:_orientation, Fhir.v6().Element)
    field(:_sequenceString, Fhir.v6().Element)
    field(:_strand, Fhir.v6().Element)
    field(:_windowEnd, Fhir.v6().Element)
    field(:_windowStart, Fhir.v6().Element)
    field(:chromosome, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:genomeAssembly, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:orientation, :string)
    field(:sequenceCodeableConcept, Fhir.v6().CodeableConcept)
    field(:sequenceReference, Fhir.v6().Reference)
    field(:sequenceString, :string)
    field(:strand, :string)
    field(:windowEnd, :float)
    field(:windowStart, :float)
  end
end
