defmodule Fhir.v6().MolecularSequenceEdit do
  use TypedStruct

  typedstruct do
    field(:_end, Fhir.v6().Element)
    field(:_replacedSequence, Fhir.v6().Element)
    field(:_replacementSequence, Fhir.v6().Element)
    field(:_start, Fhir.v6().Element)
    field(:end, :float)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:replacedSequence, :string)
    field(:replacementSequence, :string)
    field(:start, :float)
  end
end
