defmodule Fhir.v6().BundleRequest do
  use TypedStruct

  typedstruct do
    field(:_ifMatch, Fhir.v6().Element)
    field(:_ifModifiedSince, Fhir.v6().Element)
    field(:_ifNoneExist, Fhir.v6().Element)
    field(:_ifNoneMatch, Fhir.v6().Element)
    field(:_method, Fhir.v6().Element)
    field(:_url, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:ifMatch, :string)
    field(:ifModifiedSince, :timestamp)
    field(:ifNoneExist, :string)
    field(:ifNoneMatch, :string)
    field(:method, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:url, :string)
  end
end
