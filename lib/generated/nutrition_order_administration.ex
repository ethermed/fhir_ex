defmodule Fhir.NutritionOrderAdministration do
  @moduledoc """
  A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:rateQuantity, Fhir.Quantity)
    embeds_one(:rateRatio, Fhir.Ratio)
    embeds_one(:schedule, Fhir.NutritionOrderSchedule2)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          quantity: Fhir.Quantity.t(),
          rateQuantity: Fhir.Quantity.t(),
          rateRatio: Fhir.Ratio.t(),
          schedule: Fhir.NutritionOrderSchedule2.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:rateQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:rateRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:schedule, with: &Fhir.NutritionOrderSchedule2.changeset/2)
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
