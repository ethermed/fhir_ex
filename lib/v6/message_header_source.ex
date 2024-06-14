defmodule Fhir.v6().MessageHeaderSource do
  use TypedStruct

  typedstruct do
    field(:_endpointUrl, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_software, Fhir.v6().Element)
    field(:_version, Fhir.v6().Element)
    field(:contact, Fhir.v6().ContactPoint)
    field(:endpointReference, Fhir.v6().Reference)
    field(:endpointUrl, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:software, :string)
    field(:version, :string)
  end
end
