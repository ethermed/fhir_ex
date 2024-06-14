defmodule Fhir.v6().CommunicationPayload do
  use TypedStruct

  typedstruct do
    field(:contentAttachment, Fhir.v6().Attachment)
    field(:contentCodeableConcept, Fhir.v6().CodeableConcept)
    field(:contentReference, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
