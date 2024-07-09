defmodule Fhir.ElementDefinitionType do
  @moduledoc """
  Captures constraints on each element within the resource, profile, or extension.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:aggregation, {:array, :string})
    field(:code, :string)
    field(:id, :string)
    field(:profile, :string)
    field(:targetProfile, :string)
    field(:versioning, Ecto.Enum, values: [:either, :independent, :specific])
    embeds_many(:_aggregation, Fhir.Element)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_versioning, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          aggregation: [String.t()],
          code: String.t(),
          id: String.t(),
          profile: String.t(),
          targetProfile: String.t(),
          versioning: String.t(),
          _aggregation: [Fhir.Element.t()],
          _code: Fhir.Element.t(),
          _versioning: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:aggregation, :code, :id, :profile, :targetProfile, :versioning])
    |> cast_embed(:_aggregation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_versioning, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^\S*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
