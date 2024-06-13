defmodule Fhir.Generated.MessageHeaderSource do
  use TypedStruct

  typedstruct do
    field :_endpointUrl, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_software, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :contact, Fhir.Generated.ContactPoint
        field :endpointReference, Fhir.Generated.Reference
        field :endpointUrl, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :software, :string
        field :version, :string
  end
end
