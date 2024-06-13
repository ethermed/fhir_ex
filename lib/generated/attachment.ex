defmodule Fhir.Generated.Attachment do
  use TypedStruct

  typedstruct do
    field :_contentType, Fhir.Generated.Element
        field :_creation, Fhir.Generated.Element
        field :_data, Fhir.Generated.Element
        field :_duration, Fhir.Generated.Element
        field :_frames, Fhir.Generated.Element
        field :_hash, Fhir.Generated.Element
        field :_height, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_pages, Fhir.Generated.Element
        field :_size, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_width, Fhir.Generated.Element
        field :contentType, :string
        field :creation, :datetime
        field :data, :string
        field :duration, :decimal
        field :extension, [Fhir.Generated.Extension], default: []
        field :frames, :float
        field :hash, :string
        field :height, :float
        field :id, :string
        field :language, :string
        field :pages, :float
        field :size, :integer
        field :title, :string
        field :url, :string
        field :width, :float
  end
end
