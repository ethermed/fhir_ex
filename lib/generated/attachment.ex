defmodule Fhir.Attachment do
  @moduledoc """
  For referring to data content defined in other formats.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:contentType, :string)
    field(:creation, :string)
    field(:data, :string)
    field(:duration, :float)
    field(:frames, :float)
    field(:hash, :string)
    field(:height, :float)
    field(:id, :string)
    field(:language, :string)
    field(:pages, :float)
    field(:size, :string)
    field(:title, :string)
    field(:url, :string)
    field(:width, :float)
    embeds_one(:_contentType, Fhir.Element)
    embeds_one(:_creation, Fhir.Element)
    embeds_one(:_data, Fhir.Element)
    embeds_one(:_duration, Fhir.Element)
    embeds_one(:_frames, Fhir.Element)
    embeds_one(:_hash, Fhir.Element)
    embeds_one(:_height, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_pages, Fhir.Element)
    embeds_one(:_size, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:_url, Fhir.Element)
    embeds_one(:_width, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          contentType: String.t(),
          creation: String.t(),
          data: String.t(),
          duration: float(),
          frames: float(),
          hash: String.t(),
          height: float(),
          id: String.t(),
          language: String.t(),
          pages: float(),
          size: String.t(),
          title: String.t(),
          url: String.t(),
          width: float(),
          _contentType: Fhir.Element.t(),
          _creation: Fhir.Element.t(),
          _data: Fhir.Element.t(),
          _duration: Fhir.Element.t(),
          _frames: Fhir.Element.t(),
          _hash: Fhir.Element.t(),
          _height: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _pages: Fhir.Element.t(),
          _size: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          _url: Fhir.Element.t(),
          _width: Fhir.Element.t(),
          extension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :contentType,
      :creation,
      :data,
      :duration,
      :frames,
      :hash,
      :height,
      :id,
      :language,
      :pages,
      :size,
      :title,
      :url,
      :width
    ])
    |> cast_embed(:_contentType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_creation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_data, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_duration, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_frames, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_hash, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_height, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_pages, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_size, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_width, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:contentType, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :creation,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:size, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
    |> validate_format(:url, ~r/^\S*$/)
  end

  def new(params) do
    %__MODULE__{}
    |> changeset(params)
    |> apply_action(:new)
  end

  def new!(params) do
    case new(params) do
      {:ok, val} -> val
      {:error, cs} -> raise "Invalid #{__ENV__.module}.new!(): #{inspect(cs.errors)}"
    end
  end
end
