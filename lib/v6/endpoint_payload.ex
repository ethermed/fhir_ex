defmodule Fhir.v6().EndpointPayload do
  use TypedStruct

  typedstruct do
    field(:_mimeType, [Fhir.v6().Element], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:mimeType, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
