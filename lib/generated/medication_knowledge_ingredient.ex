defmodule Fhir.MedicationKnowledgeIngredient do
  @moduledoc """
  Information about a medication that is used to support knowledge.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:item, Fhir.CodeableReference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:strengthCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:strengthQuantity, Fhir.Quantity)
    embeds_one(:strengthRatio, Fhir.Ratio)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          item: Fhir.CodeableReference.t(),
          modifierExtension: [Fhir.Extension.t()],
          strengthCodeableConcept: Fhir.CodeableConcept.t(),
          strengthQuantity: Fhir.Quantity.t(),
          strengthRatio: Fhir.Ratio.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:item, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:strengthCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:strengthQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:strengthRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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
