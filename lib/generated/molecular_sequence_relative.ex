defmodule Fhir.MolecularSequenceRelative do
  use TypedStruct

  typedstruct do
    field(:_ordinalPosition, Fhir.Element)
    field(:coordinateSystem, Fhir.CodeableConcept)
    field(:edit, [Fhir.MolecularSequenceEdit], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:ordinalPosition, :float)
    field(:sequenceRange, Fhir.Range)
    field(:startingSequence, Fhir.MolecularSequenceStartingSequence)
  end
end
