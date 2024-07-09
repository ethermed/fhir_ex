defmodule Fhir.GraphDefinitionCompartment do
  @moduledoc """
  A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by following references. The Graph Definition resource defines a set and makes rules about the set.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:description, :string)
    field(:expression, :string)
    field(:id, :string)
    field(:rule, :string)
    field(:use, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_expression, Fhir.Element)
    embeds_one(:_rule, Fhir.Element)
    embeds_one(:_use, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          description: String.t(),
          expression: String.t(),
          id: String.t(),
          rule: String.t(),
          use: String.t(),
          _code: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _expression: Fhir.Element.t(),
          _rule: Fhir.Element.t(),
          _use: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :description, :expression, :id, :rule, :use])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_expression, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_rule, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_use, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:expression, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:rule, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:use, ~r/^[^\s]+( [^\s]+)*$/)
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
