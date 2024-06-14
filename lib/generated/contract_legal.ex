defmodule Fhir.ContractLegal do
  use TypedStruct

  typedstruct do
    field(:contentAttachment, Fhir.Attachment)
    field(:contentReference, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
