defmodule Fhir.Meta do
  @moduledoc """
  The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:lastUpdated, :string)
    field(:profile, :string)
    field(:source, :string)
    field(:versionId, :string)
    embeds_one(:_lastUpdated, Fhir.Element)
    embeds_one(:_source, Fhir.Element)
    embeds_one(:_versionId, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:security, Fhir.Coding)
    embeds_many(:tag, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          lastUpdated: String.t(),
          profile: String.t(),
          source: String.t(),
          versionId: String.t(),
          _lastUpdated: Fhir.Element.t(),
          _source: Fhir.Element.t(),
          _versionId: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          security: [Fhir.Coding.t()],
          tag: [Fhir.Coding.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :lastUpdated, :profile, :source, :versionId])
    |> cast_embed(:_lastUpdated, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_source, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_versionId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:security, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:tag, with: &Fhir.Coding.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :lastUpdated,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
    |> validate_format(:source, ~r/^\S*$/)
    |> validate_format(:versionId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
