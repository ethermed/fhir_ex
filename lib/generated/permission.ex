defmodule Fhir.Permission do
  @moduledoc """
  Permission resource holds access rules for a given data and context.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:combining, :string)
    field(:date, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Permission")
    field(:status, :string)
    embeds_one(:_combining, Fhir.Element)
    embeds_many(:_date, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:asserter, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:justification, Fhir.PermissionJustification)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:rule, Fhir.PermissionRule)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:validity, Fhir.Period)
  end

  @type t :: %__MODULE__{
          combining: String.t(),
          date: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _combining: Fhir.Element.t(),
          _date: [Fhir.Element.t()],
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          asserter: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          justification: Fhir.PermissionJustification.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          rule: [Fhir.PermissionRule.t()],
          text: Fhir.Narrative.t(),
          validity: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:combining, :date, :id, :implicitRules, :language, :resourceType, :status])
    |> cast_embed(:_combining, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:asserter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:justification, with: &Fhir.PermissionJustification.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:rule, with: &Fhir.PermissionRule.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:validity, with: &Fhir.Period.changeset/2)
    |> validate_format(:combining, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
