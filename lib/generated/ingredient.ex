defmodule Fhir.Ingredient do
  @moduledoc """
  An ingredient of a manufactured item or pharmaceutical product.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:allergenicIndicator, :boolean)
    field(:comment, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Ingredient")
    field(:status, :string)
    embeds_one(:_allergenicIndicator, Fhir.Element)
    embeds_one(:_comment, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:for, Fhir.Reference)
    embeds_many(:function, Fhir.CodeableConcept)
    embeds_one(:group, Fhir.CodeableConcept)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_many(:manufacturer, Fhir.IngredientManufacturer)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:role, Fhir.CodeableConcept)
    embeds_one(:substance, Fhir.IngredientSubstance)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          allergenicIndicator: boolean(),
          comment: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _allergenicIndicator: Fhir.Element.t(),
          _comment: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          for: [Fhir.Reference.t()],
          function: [Fhir.CodeableConcept.t()],
          group: Fhir.CodeableConcept.t(),
          identifier: Fhir.Identifier.t(),
          manufacturer: [Fhir.IngredientManufacturer.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          role: Fhir.CodeableConcept.t(),
          substance: Fhir.IngredientSubstance.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :allergenicIndicator,
      :comment,
      :id,
      :implicitRules,
      :language,
      :resourceType,
      :status
    ])
    |> cast_embed(:_allergenicIndicator, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_comment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:for, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:function, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:group, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:manufacturer, with: &Fhir.IngredientManufacturer.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:role, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:substance, with: &Fhir.IngredientSubstance.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_inclusion(:allergenicIndicator, [true, false])
    |> validate_format(:comment, ~r/^^[\s\S]+$$/)
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
