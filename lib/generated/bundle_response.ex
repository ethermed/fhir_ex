defmodule Fhir.BundleResponse do
  @moduledoc """
  A container for a collection of resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:etag, :string)
    field(:id, :string)
    field(:lastModified, :string)
    field(:location, :string)
    field(:status, :string)
    embeds_one(:_etag, Fhir.Element)
    embeds_one(:_lastModified, Fhir.Element)
    embeds_one(:_location, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:outcome, Fhir.ResourceList)
  end

  @type t :: %__MODULE__{
          etag: String.t(),
          id: String.t(),
          lastModified: String.t(),
          location: String.t(),
          status: String.t(),
          _etag: Fhir.Element.t(),
          _lastModified: Fhir.Element.t(),
          _location: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          outcome: Fhir.ResourceList.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:etag, :id, :lastModified, :location, :status])
    |> cast_embed(:_etag, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lastModified, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_location, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:outcome, with: &Fhir.ResourceList.changeset/2)
    |> validate_format(:etag, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :lastModified,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
    |> validate_format(:location, ~r/^\S*$/)
    |> validate_format(:status, ~r/^^[\s\S]+$$/)
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
