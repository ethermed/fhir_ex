defmodule Fhir.PlanDefinitionRelatedAction do
  @moduledoc """
  This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact. The resource is general enough to support the description of a broad range of clinical and non-clinical artifacts such as clinical decision support rules, order sets, protocols, and drug quality specifications.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:endRelationship, :string)
    field(:id, :string)
    field(:relationship, :string)
    field(:targetId, :string)
    embeds_one(:_endRelationship, Fhir.Element)
    embeds_one(:_relationship, Fhir.Element)
    embeds_one(:_targetId, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:offsetDuration, Fhir.Duration)
    embeds_one(:offsetRange, Fhir.Range)
  end

  @type t :: %__MODULE__{
          endRelationship: String.t(),
          id: String.t(),
          relationship: String.t(),
          targetId: String.t(),
          _endRelationship: Fhir.Element.t(),
          _relationship: Fhir.Element.t(),
          _targetId: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          offsetDuration: Fhir.Duration.t(),
          offsetRange: Fhir.Range.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:endRelationship, :id, :relationship, :targetId])
    |> cast_embed(:_endRelationship, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_relationship, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_targetId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:offsetDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:offsetRange, with: &Fhir.Range.changeset/2)
    |> validate_format(:endRelationship, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:relationship, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:targetId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
