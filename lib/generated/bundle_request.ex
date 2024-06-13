defmodule Fhir.Generated.BundleRequest do
  use TypedStruct

  typedstruct do
    field :_ifMatch, Fhir.Generated.Element
        field :_ifModifiedSince, Fhir.Generated.Element
        field :_ifNoneExist, Fhir.Generated.Element
        field :_ifNoneMatch, Fhir.Generated.Element
        field :_method, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :ifMatch, :string
        field :ifModifiedSince, :timestamp
        field :ifNoneExist, :string
        field :ifNoneMatch, :string
        field :method, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :url, :string
  end
end
