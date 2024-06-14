defmodule Fhir.EndpointPayload do
  use TypedStruct

  typedstruct do
    field(:_mimeType, [Fhir.Element], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:mimeType, [:string], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, [Fhir.CodeableConcept], default: [])
  end
end
