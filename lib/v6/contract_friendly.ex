defmodule Fhir.v6().ContractFriendly do
  use TypedStruct

  typedstruct do
    field(:contentAttachment, Fhir.v6().Attachment)
    field(:contentReference, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
