defmodule Fhir.SubscriptionFilterBy do
  @moduledoc """
  The subscription resource describes a particular client's request to be notified about a SubscriptionTopic.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:comparator, :string)
    field(:filterParameter, :string)
    field(:id, :string)
    field(:modifier, :string)
    field(:resourceType, :string)
    field(:value, :string)
    embeds_one(:_comparator, Fhir.Element)
    embeds_one(:_filterParameter, Fhir.Element)
    embeds_one(:_modifier, Fhir.Element)
    embeds_one(:_resourceType, Fhir.Element)
    embeds_one(:_value, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          comparator: String.t(),
          filterParameter: String.t(),
          id: String.t(),
          modifier: String.t(),
          resourceType: String.t(),
          value: String.t(),
          _comparator: Fhir.Element.t(),
          _filterParameter: Fhir.Element.t(),
          _modifier: Fhir.Element.t(),
          _resourceType: Fhir.Element.t(),
          _value: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:comparator, :filterParameter, :id, :modifier, :resourceType, :value])
    |> cast_embed(:_comparator, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_filterParameter, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_modifier, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_resourceType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_value, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:comparator, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:filterParameter, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:modifier, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:resourceType, ~r/^\S*$/)
    |> validate_format(:value, ~r/^^[\s\S]+$$/)
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
