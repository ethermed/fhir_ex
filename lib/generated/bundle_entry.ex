defmodule Fhir.BundleEntry do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_fullUrl, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:fullUrl, :string)
    field(:id, :string)
    field(:link, [Fhir.BundleLink], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:request, Fhir.BundleRequest)
    field(:resource, Fhir.ResourceList)
    field(:response, Fhir.BundleResponse)
    field(:search, Fhir.BundleSearch)
  end
end
