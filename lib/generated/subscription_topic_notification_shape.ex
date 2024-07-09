defmodule Fhir.SubscriptionTopicNotificationShape do
  @moduledoc """
  Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:include, :string)
    field(:resource, :string)
    field(:revInclude, :string)
    embeds_many(:_include, Fhir.Element)
    embeds_one(:_resource, Fhir.Element)
    embeds_many(:_revInclude, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          include: String.t(),
          resource: String.t(),
          revInclude: String.t(),
          _include: [Fhir.Element.t()],
          _resource: Fhir.Element.t(),
          _revInclude: [Fhir.Element.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :include, :resource, :revInclude])
    |> cast_embed(:_include, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_resource, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_revInclude, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
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
