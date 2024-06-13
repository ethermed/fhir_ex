defmodule Fhir.Generated.ContractFriendly do
  use TypedStruct

  typedstruct do
    field :contentAttachment, Fhir.Generated.Attachment
        field :contentReference, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
