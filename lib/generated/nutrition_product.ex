defmodule Fhir.NutritionProduct do
  @moduledoc """
  A food or supplement that is consumed by patients.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "NutritionProduct")
    field(:status, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_many(:characteristic, Fhir.NutritionProductCharacteristic)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:ingredient, Fhir.NutritionProductIngredient)
    embeds_many(:instance, Fhir.NutritionProductInstance)
    embeds_many(:knownAllergen, Fhir.CodeableReference)
    embeds_many(:manufacturer, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_many(:nutrient, Fhir.NutritionProductNutrient)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          category: [Fhir.CodeableConcept.t()],
          characteristic: [Fhir.NutritionProductCharacteristic.t()],
          code: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          ingredient: [Fhir.NutritionProductIngredient.t()],
          instance: [Fhir.NutritionProductInstance.t()],
          knownAllergen: [Fhir.CodeableReference.t()],
          manufacturer: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          nutrient: [Fhir.NutritionProductNutrient.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :implicitRules, :language, :resourceType, :status])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:characteristic, with: &Fhir.NutritionProductCharacteristic.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:ingredient, with: &Fhir.NutritionProductIngredient.changeset/2)
    |> cast_embed(:instance, with: &Fhir.NutritionProductInstance.changeset/2)
    |> cast_embed(:knownAllergen, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:manufacturer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:nutrient, with: &Fhir.NutritionProductNutrient.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
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
