defmodule Fhir.Attachment do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_contentType, Fhir.Element
        field :_creation, Fhir.Element
        field :_data, Fhir.Element
        field :_duration, Fhir.Element
        field :_frames, Fhir.Element
        field :_hash, Fhir.Element
        field :_height, Fhir.Element
        field :_language, Fhir.Element
        field :_pages, Fhir.Element
        field :_size, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_width, Fhir.Element
        field :contentType, :string
        field :creation, :datetime
        field :data, :string
        field :duration, :decimal
        field :extension, [Fhir.Extension], default: []
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
