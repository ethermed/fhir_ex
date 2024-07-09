defmodule Fhir.IngredientReferenceStrength do
  @moduledoc """
  An ingredient of a manufactured item or pharmaceutical product.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:measurementPoint, :string)
    embeds_one(:_measurementPoint, Fhir.Element)
    embeds_many(:country, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:strengthQuantity, Fhir.Quantity)
    embeds_one(:strengthRatio, Fhir.Ratio)
    embeds_one(:strengthRatioRange, Fhir.RatioRange)
    embeds_one(:substance, Fhir.CodeableReference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          measurementPoint: String.t(),
          _measurementPoint: Fhir.Element.t(),
          country: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          strengthQuantity: Fhir.Quantity.t(),
          strengthRatio: Fhir.Ratio.t(),
          strengthRatioRange: Fhir.RatioRange.t(),
          substance: Fhir.CodeableReference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :measurementPoint])
    |> cast_embed(:_measurementPoint, with: &Fhir.Element.changeset/2)
    |> cast_embed(:country, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:strengthQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:strengthRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:strengthRatioRange, with: &Fhir.RatioRange.changeset/2)
    |> cast_embed(:substance, with: &Fhir.CodeableReference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:measurementPoint, ~r/^^[\s\S]+$$/)
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
