defmodule Fhir.v6().SubstanceProteinSubunit do
  use TypedStruct

  typedstruct do
    field(:_cTerminalModification, Fhir.v6().Element)
    field(:_length, Fhir.v6().Element)
    field(:_nTerminalModification, Fhir.v6().Element)
    field(:_sequence, Fhir.v6().Element)
    field(:_subunit, Fhir.v6().Element)
    field(:cTerminalModification, :string)
    field(:cTerminalModificationId, Fhir.v6().Identifier)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:length, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:nTerminalModification, :string)
    field(:nTerminalModificationId, Fhir.v6().Identifier)
    field(:sequence, :string)
    field(:sequenceAttachment, Fhir.v6().Attachment)
    field(:subunit, :float)
  end
end
