defmodule Fhir.Binary do
  @moduledoc """
  A resource that represents the data of a single raw artifact as digital content accessible in its native format.  A Binary resource can contain any content, whether text, image, pdf, zip archive, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:contentType, :string)
    field(:data, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Binary")
    embeds_one(:_contentType, Fhir.Element)
    embeds_one(:_data, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:securityContext, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          contentType: String.t(),
          data: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          _contentType: Fhir.Element.t(),
          _data: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          meta: Fhir.Meta.t(),
          securityContext: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:contentType, :data, :id, :implicitRules, :language, :resourceType])
    |> cast_embed(:_contentType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_data, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:securityContext, with: &Fhir.Reference.changeset/2)
    |> validate_format(:contentType, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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
