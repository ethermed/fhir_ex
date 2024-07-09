defmodule Fhir.RequirementsStatement do
  @moduledoc """
  A set of requirements - a list of features or behaviors of designed systems that are necessary to achieve organizational or regulatory goals.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:conditionality, :boolean)
    field(:conformance, :string)
    field(:derivedFrom, :string)
    field(:id, :string)
    field(:key, :string)
    field(:label, :string)
    field(:parent, :string)
    field(:reference, :string)
    field(:requirement, :string)
    field(:satisfiedBy, :string)
    embeds_one(:_conditionality, Fhir.Element)
    embeds_many(:_conformance, Fhir.Element)
    embeds_one(:_derivedFrom, Fhir.Element)
    embeds_one(:_key, Fhir.Element)
    embeds_one(:_label, Fhir.Element)
    embeds_one(:_parent, Fhir.Element)
    embeds_many(:_reference, Fhir.Element)
    embeds_one(:_requirement, Fhir.Element)
    embeds_many(:_satisfiedBy, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:source, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          conditionality: boolean(),
          conformance: String.t(),
          derivedFrom: String.t(),
          id: String.t(),
          key: String.t(),
          label: String.t(),
          parent: String.t(),
          reference: String.t(),
          requirement: String.t(),
          satisfiedBy: String.t(),
          _conditionality: Fhir.Element.t(),
          _conformance: [Fhir.Element.t()],
          _derivedFrom: Fhir.Element.t(),
          _key: Fhir.Element.t(),
          _label: Fhir.Element.t(),
          _parent: Fhir.Element.t(),
          _reference: [Fhir.Element.t()],
          _requirement: Fhir.Element.t(),
          _satisfiedBy: [Fhir.Element.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          source: [Fhir.Reference.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :conditionality,
      :conformance,
      :derivedFrom,
      :id,
      :key,
      :label,
      :parent,
      :reference,
      :requirement,
      :satisfiedBy
    ])
    |> cast_embed(:_conditionality, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_conformance, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_derivedFrom, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_key, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_label, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_parent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_reference, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_requirement, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_satisfiedBy, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:source, with: &Fhir.Reference.changeset/2)
    |> validate_inclusion(:conditionality, [true, false])
    |> validate_format(:derivedFrom, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:key, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:label, ~r/^^[\s\S]+$$/)
    |> validate_format(:parent, ~r/^^[\s\S]+$$/)
    |> validate_format(:requirement, ~r/^^[\s\S]+$$/)
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
