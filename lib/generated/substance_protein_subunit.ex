defmodule Fhir.SubstanceProteinSubunit do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_cTerminalModification, Fhir.Element)
    field(:_length, Fhir.Element)
    field(:_nTerminalModification, Fhir.Element)
    field(:_sequence, Fhir.Element)
    field(:_subunit, Fhir.Element)
    field(:cTerminalModification, :string)
    field(:cTerminalModificationId, Fhir.Identifier)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:length, :float)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:nTerminalModification, :string)
    field(:nTerminalModificationId, Fhir.Identifier)
    field(:sequence, :string)
    field(:sequenceAttachment, Fhir.Attachment)
    field(:subunit, :float)
  end
end
