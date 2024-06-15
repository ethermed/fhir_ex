defmodule Fhir.BundleResponse do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_etag, Fhir.Element
        field :_lastModified, Fhir.Element
        field :_location, Fhir.Element
        field :_status, Fhir.Element
        field :etag, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :lastModified, :timestamp
        field :location, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :outcome, Fhir.ResourceList
        field :status, :string
  end
end
