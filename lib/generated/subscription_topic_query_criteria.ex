defmodule Fhir.SubscriptionTopicQueryCriteria do
  @moduledoc """
  Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:current, :string)
    field(:id, :string)
    field(:previous, :string)
    field(:requireBoth, :boolean)
    field(:resultForCreate, :string)
    field(:resultForDelete, :string)
    embeds_one(:_current, Fhir.Element)
    embeds_one(:_previous, Fhir.Element)
    embeds_one(:_requireBoth, Fhir.Element)
    embeds_one(:_resultForCreate, Fhir.Element)
    embeds_one(:_resultForDelete, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          current: String.t(),
          id: String.t(),
          previous: String.t(),
          requireBoth: boolean(),
          resultForCreate: String.t(),
          resultForDelete: String.t(),
          _current: Fhir.Element.t(),
          _previous: Fhir.Element.t(),
          _requireBoth: Fhir.Element.t(),
          _resultForCreate: Fhir.Element.t(),
          _resultForDelete: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:current, :id, :previous, :requireBoth, :resultForCreate, :resultForDelete])
    |> cast_embed(:_current, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_previous, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_requireBoth, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_resultForCreate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_resultForDelete, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:current, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:previous, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:requireBoth, [true, false])
    |> validate_format(:resultForCreate, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:resultForDelete, ~r/^[^\s]+( [^\s]+)*$/)
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
