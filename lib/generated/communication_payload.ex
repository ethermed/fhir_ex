defmodule Fhir.CommunicationPayload do
  use TypedStruct

  typedstruct do
    field(:contentAttachment, Fhir.Attachment)
    field(:contentCodeableConcept, Fhir.CodeableConcept)
    field(:contentReference, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
