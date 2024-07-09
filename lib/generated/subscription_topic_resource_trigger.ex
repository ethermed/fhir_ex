defmodule Fhir.SubscriptionTopicResourceTrigger do
  @moduledoc """
  Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:fhirPathCriteria, :string)
    field(:id, :string)
    field(:resource, :string)
    field(:supportedInteraction, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_fhirPathCriteria, Fhir.Element)
    embeds_one(:_resource, Fhir.Element)
    embeds_many(:_supportedInteraction, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:queryCriteria, Fhir.SubscriptionTopicQueryCriteria)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          fhirPathCriteria: String.t(),
          id: String.t(),
          resource: String.t(),
          supportedInteraction: String.t(),
          _description: Fhir.Element.t(),
          _fhirPathCriteria: Fhir.Element.t(),
          _resource: Fhir.Element.t(),
          _supportedInteraction: [Fhir.Element.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          queryCriteria: Fhir.SubscriptionTopicQueryCriteria.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :fhirPathCriteria, :id, :resource, :supportedInteraction])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_fhirPathCriteria, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_resource, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_supportedInteraction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:queryCriteria, with: &Fhir.SubscriptionTopicQueryCriteria.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:fhirPathCriteria, ~r/^^[\s\S]+$$/)
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
