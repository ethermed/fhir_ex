defmodule Fhir.Generated.MessageHeaderDestination do
  use TypedStruct

  typedstruct do
    field :_endpointUrl, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :endpointReference, Fhir.Generated.Reference
        field :endpointUrl, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :receiver, Fhir.Generated.Reference
        field :target, Fhir.Generated.Reference
  end
end
