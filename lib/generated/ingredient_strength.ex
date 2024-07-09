defmodule Fhir.IngredientStrength do
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
    field(:textConcentration, :string)
    field(:textPresentation, :string)
    embeds_one(:_measurementPoint, Fhir.Element)
    embeds_one(:_textConcentration, Fhir.Element)
    embeds_one(:_textPresentation, Fhir.Element)
    embeds_one(:basis, Fhir.CodeableConcept)
    embeds_one(:concentrationCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:concentrationQuantity, Fhir.Quantity)
    embeds_one(:concentrationRatio, Fhir.Ratio)
    embeds_one(:concentrationRatioRange, Fhir.RatioRange)
    embeds_many(:country, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:presentationCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:presentationQuantity, Fhir.Quantity)
    embeds_one(:presentationRatio, Fhir.Ratio)
    embeds_one(:presentationRatioRange, Fhir.RatioRange)
    embeds_many(:referenceStrength, Fhir.IngredientReferenceStrength)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          measurementPoint: String.t(),
          textConcentration: String.t(),
          textPresentation: String.t(),
          _measurementPoint: Fhir.Element.t(),
          _textConcentration: Fhir.Element.t(),
          _textPresentation: Fhir.Element.t(),
          basis: Fhir.CodeableConcept.t(),
          concentrationCodeableConcept: Fhir.CodeableConcept.t(),
          concentrationQuantity: Fhir.Quantity.t(),
          concentrationRatio: Fhir.Ratio.t(),
          concentrationRatioRange: Fhir.RatioRange.t(),
          country: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          presentationCodeableConcept: Fhir.CodeableConcept.t(),
          presentationQuantity: Fhir.Quantity.t(),
          presentationRatio: Fhir.Ratio.t(),
          presentationRatioRange: Fhir.RatioRange.t(),
          referenceStrength: [Fhir.IngredientReferenceStrength.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :measurementPoint, :textConcentration, :textPresentation])
    |> cast_embed(:_measurementPoint, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_textConcentration, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_textPresentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:basis, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:concentrationCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:concentrationQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:concentrationRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:concentrationRatioRange, with: &Fhir.RatioRange.changeset/2)
    |> cast_embed(:country, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:presentationCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:presentationQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:presentationRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:presentationRatioRange, with: &Fhir.RatioRange.changeset/2)
    |> cast_embed(:referenceStrength, with: &Fhir.IngredientReferenceStrength.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:measurementPoint, ~r/^^[\s\S]+$$/)
    |> validate_format(:textConcentration, ~r/^^[\s\S]+$$/)
    |> validate_format(:textPresentation, ~r/^^[\s\S]+$$/)
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
