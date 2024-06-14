defmodule Fhir.MessageHeaderSource do
  use TypedStruct

  typedstruct do
    field(:_endpointUrl, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_software, Fhir.Element)
    field(:_version, Fhir.Element)
    field(:contact, Fhir.ContactPoint)
    field(:endpointReference, Fhir.Reference)
    field(:endpointUrl, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:software, :string)
    field(:version, :string)
  end
end
