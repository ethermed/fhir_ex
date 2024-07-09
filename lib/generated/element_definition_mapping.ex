defmodule Fhir.ElementDefinitionMapping do
  @moduledoc """
  Captures constraints on each element within the resource, profile, or extension.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:comment, :string)
    field(:id, :string)
    field(:identity, :string)
    field(:language, :string)
    field(:map, :string)
    embeds_one(:_comment, Fhir.Element)
    embeds_one(:_identity, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_map, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          comment: String.t(),
          id: String.t(),
          identity: String.t(),
          language: String.t(),
          map: String.t(),
          _comment: Fhir.Element.t(),
          _identity: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _map: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:comment, :id, :identity, :language, :map])
    |> cast_embed(:_comment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_identity, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_map, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:comment, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:identity, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:map, ~r/^^[\s\S]+$$/)
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
