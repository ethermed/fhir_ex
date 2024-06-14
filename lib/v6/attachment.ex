defmodule Fhir.v6().Attachment do
  use TypedStruct

  typedstruct do
    field(:_contentType, Fhir.v6().Element)
    field(:_creation, Fhir.v6().Element)
    field(:_data, Fhir.v6().Element)
    field(:_duration, Fhir.v6().Element)
    field(:_frames, Fhir.v6().Element)
    field(:_hash, Fhir.v6().Element)
    field(:_height, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_pages, Fhir.v6().Element)
    field(:_size, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:_url, Fhir.v6().Element)
    field(:_width, Fhir.v6().Element)
    field(:contentType, :string)
    field(:creation, :datetime)
    field(:data, :string)
    field(:duration, :decimal)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:frames, :float)
    field(:hash, :string)
    field(:height, :float)
    field(:id, :string)
    field(:language, :string)
    field(:pages, :float)
    field(:size, :integer)
    field(:title, :string)
    field(:url, :string)
    field(:width, :float)
  end
end
