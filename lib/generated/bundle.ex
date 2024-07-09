defmodule Fhir.Bundle do
  @moduledoc """
  A container for a collection of resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Bundle")
    field(:timestamp, :string)
    field(:total, :float)
    field(:type, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_timestamp, Fhir.Element)
    embeds_one(:_total, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:entry, Fhir.BundleEntry)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_one(:issues, Fhir.ResourceList)
    embeds_many(:link, Fhir.BundleLink)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:signature, Fhir.Signature)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          timestamp: String.t(),
          total: float(),
          type: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _timestamp: Fhir.Element.t(),
          _total: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          entry: [Fhir.BundleEntry.t()],
          identifier: Fhir.Identifier.t(),
          issues: Fhir.ResourceList.t(),
          link: [Fhir.BundleLink.t()],
          meta: Fhir.Meta.t(),
          signature: Fhir.Signature.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :implicitRules, :language, :resourceType, :timestamp, :total, :type])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_timestamp, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_total, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:entry, with: &Fhir.BundleEntry.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:issues, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:link, with: &Fhir.BundleLink.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:signature, with: &Fhir.Signature.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :timestamp,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
    |> validate_format(:total, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
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
