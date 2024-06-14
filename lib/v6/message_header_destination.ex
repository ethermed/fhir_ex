defmodule Fhir.v6().MessageHeaderDestination do
  use TypedStruct

  typedstruct do
    field(:_endpointUrl, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:endpointReference, Fhir.v6().Reference)
    field(:endpointUrl, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:receiver, Fhir.v6().Reference)
    field(:target, Fhir.v6().Reference)
  end
end
