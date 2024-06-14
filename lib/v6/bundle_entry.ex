defmodule Fhir.v6().BundleEntry do
  use TypedStruct

  typedstruct do
    field(:_fullUrl, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:fullUrl, :string)
    field(:id, :string)
    field(:link, [Fhir.v6().BundleLink], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:request, Fhir.v6().BundleRequest)
    field(:resource, Fhir.v6().ResourceList)
    field(:response, Fhir.v6().BundleResponse)
    field(:search, Fhir.v6().BundleSearch)
  end
end
