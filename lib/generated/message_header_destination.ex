defmodule Fhir.MessageHeaderDestination do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_endpointUrl, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:endpointReference, Fhir.Reference)
    field(:endpointUrl, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:receiver, Fhir.Reference)
    field(:target, Fhir.Reference)
  end
end
