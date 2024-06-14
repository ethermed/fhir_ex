defmodule Fhir.v6().MolecularSequenceRelative do
  use TypedStruct

  typedstruct do
    field(:_ordinalPosition, Fhir.v6().Element)
    field(:coordinateSystem, Fhir.v6().CodeableConcept)
    field(:edit, [Fhir.v6().MolecularSequenceEdit], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:ordinalPosition, :float)
    field(:sequenceRange, Fhir.v6().Range)
    field(:startingSequence, Fhir.v6().MolecularSequenceStartingSequence)
  end
end
