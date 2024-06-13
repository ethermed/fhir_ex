defmodule Fhir.Generated.CommunicationPayload do
  use TypedStruct

  typedstruct do
    field :contentAttachment, Fhir.Generated.Attachment
        field :contentCodeableConcept, Fhir.Generated.CodeableConcept
        field :contentReference, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
