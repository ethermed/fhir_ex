defmodule Fhir.NutritionOrderEnteralFormula do
  @moduledoc """
  A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:administrationInstruction, :string)
    field(:baseFormulaProductName, :string)
    field(:id, :string)
    embeds_one(:_administrationInstruction, Fhir.Element)
    embeds_one(:_baseFormulaProductName, Fhir.Element)
    embeds_many(:additive, Fhir.NutritionOrderAdditive)
    embeds_many(:administration, Fhir.NutritionOrderAdministration)
    embeds_one(:baseFormulaType, Fhir.CodeableReference)
    embeds_one(:caloricDensity, Fhir.Quantity)
    embeds_many(:deliveryDevice, Fhir.CodeableReference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:maxVolumeToDeliver, Fhir.Quantity)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:routeOfAdministration, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          administrationInstruction: String.t(),
          baseFormulaProductName: String.t(),
          id: String.t(),
          _administrationInstruction: Fhir.Element.t(),
          _baseFormulaProductName: Fhir.Element.t(),
          additive: [Fhir.NutritionOrderAdditive.t()],
          administration: [Fhir.NutritionOrderAdministration.t()],
          baseFormulaType: Fhir.CodeableReference.t(),
          caloricDensity: Fhir.Quantity.t(),
          deliveryDevice: [Fhir.CodeableReference.t()],
          extension: [Fhir.Extension.t()],
          maxVolumeToDeliver: Fhir.Quantity.t(),
          modifierExtension: [Fhir.Extension.t()],
          routeOfAdministration: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:administrationInstruction, :baseFormulaProductName, :id])
    |> cast_embed(:_administrationInstruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_baseFormulaProductName, with: &Fhir.Element.changeset/2)
    |> cast_embed(:additive, with: &Fhir.NutritionOrderAdditive.changeset/2)
    |> cast_embed(:administration, with: &Fhir.NutritionOrderAdministration.changeset/2)
    |> cast_embed(:baseFormulaType, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:caloricDensity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:deliveryDevice, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:maxVolumeToDeliver, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:routeOfAdministration, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:administrationInstruction, ~r/^^[\s\S]+$$/)
    |> validate_format(:baseFormulaProductName, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
