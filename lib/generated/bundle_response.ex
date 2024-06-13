defmodule Fhir.Generated.BundleResponse do
  use TypedStruct

  typedstruct do
    field :_etag, Fhir.Generated.Element
        field :_lastModified, Fhir.Generated.Element
        field :_location, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :etag, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :lastModified, :timestamp
        field :location, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :outcome, Fhir.Generated.ResourceList
        field :status, :string
  end
end
