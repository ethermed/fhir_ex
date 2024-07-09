defmodule Fhir.Linkage do
  @moduledoc """
  Identifies two or more records (resource instances) that refer to the same real-world "occurrence".
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:active, :boolean)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Linkage")
    embeds_one(:_active, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:author, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:item, Fhir.LinkageItem)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          active: boolean(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          _active: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          author: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          item: [Fhir.LinkageItem.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:active, :id, :implicitRules, :language, :resourceType])
    |> cast_embed(:_active, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:item, with: &Fhir.LinkageItem.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_inclusion(:active, [true, false])
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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
