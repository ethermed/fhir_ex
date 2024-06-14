defmodule Fhir.v6().BundleResponse do
  use TypedStruct

  typedstruct do
    field(:_etag, Fhir.v6().Element)
    field(:_lastModified, Fhir.v6().Element)
    field(:_location, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:etag, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:lastModified, :timestamp)
    field(:location, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:outcome, Fhir.v6().ResourceList)
    field(:status, :string)
  end
end
