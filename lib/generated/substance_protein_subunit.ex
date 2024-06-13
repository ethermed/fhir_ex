defmodule Fhir.Generated.SubstanceProteinSubunit do
  use TypedStruct

  typedstruct do
    field :_cTerminalModification, Fhir.Generated.Element
        field :_length, Fhir.Generated.Element
        field :_nTerminalModification, Fhir.Generated.Element
        field :_sequence, Fhir.Generated.Element
        field :_subunit, Fhir.Generated.Element
        field :cTerminalModification, :string
        field :cTerminalModificationId, Fhir.Generated.Identifier
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :length, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :nTerminalModification, :string
        field :nTerminalModificationId, Fhir.Generated.Identifier
        field :sequence, :string
        field :sequenceAttachment, Fhir.Generated.Attachment
        field :subunit, :float
  end
end
