defmodule Fhir.MedicationIngredient do
  @moduledoc """
  This resource is primarily used for the identification and definition of a medication, including ingredients, for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:isActive, :boolean)
    embeds_one(:_isActive, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:item, Fhir.CodeableReference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:strengthCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:strengthQuantity, Fhir.Quantity)
    embeds_one(:strengthRatio, Fhir.Ratio)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          isActive: boolean(),
          _isActive: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          item: Fhir.CodeableReference.t(),
          modifierExtension: [Fhir.Extension.t()],
          strengthCodeableConcept: Fhir.CodeableConcept.t(),
          strengthQuantity: Fhir.Quantity.t(),
          strengthRatio: Fhir.Ratio.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :isActive])
    |> cast_embed(:_isActive, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:item, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:strengthCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:strengthQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:strengthRatio, with: &Fhir.Ratio.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:isActive, [true, false])
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
