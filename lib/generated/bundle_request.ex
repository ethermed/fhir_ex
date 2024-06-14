defmodule Fhir.BundleRequest do
  use TypedStruct

  typedstruct do
    field(:_ifMatch, Fhir.Element)
    field(:_ifModifiedSince, Fhir.Element)
    field(:_ifNoneExist, Fhir.Element)
    field(:_ifNoneMatch, Fhir.Element)
    field(:_method, Fhir.Element)
    field(:_url, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:ifMatch, :string)
    field(:ifModifiedSince, :timestamp)
    field(:ifNoneExist, :string)
    field(:ifNoneMatch, :string)
    field(:method, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:url, :string)
  end
end
