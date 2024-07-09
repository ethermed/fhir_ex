defmodule Fhir.NutritionOrderOralDiet do
  @moduledoc """
  A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:instruction, :string)
    embeds_one(:_instruction, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:fluidConsistencyType, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:nutrient, Fhir.NutritionOrderNutrient)
    embeds_one(:schedule, Fhir.NutritionOrderSchedule)
    embeds_many(:texture, Fhir.NutritionOrderTexture)
    embeds_many(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          instruction: String.t(),
          _instruction: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          fluidConsistencyType: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          nutrient: [Fhir.NutritionOrderNutrient.t()],
          schedule: Fhir.NutritionOrderSchedule.t(),
          texture: [Fhir.NutritionOrderTexture.t()],
          type: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :instruction])
    |> cast_embed(:_instruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:fluidConsistencyType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:nutrient, with: &Fhir.NutritionOrderNutrient.changeset/2)
    |> cast_embed(:schedule, with: &Fhir.NutritionOrderSchedule.changeset/2)
    |> cast_embed(:texture, with: &Fhir.NutritionOrderTexture.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:instruction, ~r/^^[\s\S]+$$/)
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
