defmodule Fhir.Generated.EndpointPayload do
  use TypedStruct

  typedstruct do
    field :_mimeType, [Fhir.Generated.Element], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :mimeType, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
