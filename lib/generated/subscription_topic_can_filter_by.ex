defmodule Fhir.SubscriptionTopicCanFilterBy do
  @moduledoc """
  Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:comparator, :string)
    field(:description, :string)
    field(:filterDefinition, :string)
    field(:filterParameter, :string)
    field(:id, :string)
    field(:modifier, :string)
    field(:resource, :string)
    embeds_many(:_comparator, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_filterDefinition, Fhir.Element)
    embeds_one(:_filterParameter, Fhir.Element)
    embeds_many(:_modifier, Fhir.Element)
    embeds_one(:_resource, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          comparator: String.t(),
          description: String.t(),
          filterDefinition: String.t(),
          filterParameter: String.t(),
          id: String.t(),
          modifier: String.t(),
          resource: String.t(),
          _comparator: [Fhir.Element.t()],
          _description: Fhir.Element.t(),
          _filterDefinition: Fhir.Element.t(),
          _filterParameter: Fhir.Element.t(),
          _modifier: [Fhir.Element.t()],
          _resource: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :comparator,
      :description,
      :filterDefinition,
      :filterParameter,
      :id,
      :modifier,
      :resource
    ])
    |> cast_embed(:_comparator, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_filterDefinition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_filterParameter, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_modifier, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_resource, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:filterDefinition, ~r/^\S*$/)
    |> validate_format(:filterParameter, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:resource, ~r/^\S*$/)
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
