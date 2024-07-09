defmodule Fhir.GraphDefinitionNode do
  @moduledoc """
  A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by following references. The Graph Definition resource defines a set and makes rules about the set.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:nodeId, :string)
    field(:profile, :string)
    field(:type, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_nodeId, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          nodeId: String.t(),
          profile: String.t(),
          type: String.t(),
          _description: Fhir.Element.t(),
          _nodeId: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :nodeId, :profile, :type])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_nodeId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:nodeId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:profile, ~r/^\S*$/)
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
