defmodule Fhir.Generated.BundleEntry do
  use TypedStruct

  typedstruct do
    field :_fullUrl, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :fullUrl, :string
        field :id, :string
        field :link, [Fhir.Generated.BundleLink], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :request, Fhir.Generated.BundleRequest
        field :resource, Fhir.Generated.ResourceList
        field :response, Fhir.Generated.BundleResponse
        field :search, Fhir.Generated.BundleSearch
  end
end
