defmodule Fhir.NutritionOrderSupplement do
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
    field(:productName, :string)
    embeds_one(:_instruction, Fhir.Element)
    embeds_one(:_productName, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:schedule, Fhir.NutritionOrderSchedule1)
    embeds_one(:type, Fhir.CodeableReference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          instruction: String.t(),
          productName: String.t(),
          _instruction: Fhir.Element.t(),
          _productName: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          quantity: Fhir.Quantity.t(),
          schedule: Fhir.NutritionOrderSchedule1.t(),
          type: Fhir.CodeableReference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :instruction, :productName])
    |> cast_embed(:_instruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_productName, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:schedule, with: &Fhir.NutritionOrderSchedule1.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableReference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:instruction, ~r/^^[\s\S]+$$/)
    |> validate_format(:productName, ~r/^^[\s\S]+$$/)
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
