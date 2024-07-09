defmodule Fhir.MeasureReportStratum do
  @moduledoc """
  The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the resources involved in that calculation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:measureScoreDateTime, :string)
    field(:valueBoolean, :boolean)
    embeds_one(:_measureScoreDateTime, Fhir.Element)
    embeds_one(:_valueBoolean, Fhir.Element)
    embeds_many(:component, Fhir.MeasureReportComponent)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:measureScoreCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:measureScoreDuration, Fhir.Duration)
    embeds_one(:measureScorePeriod, Fhir.Period)
    embeds_one(:measureScoreQuantity, Fhir.Quantity)
    embeds_one(:measureScoreRange, Fhir.Range)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:population, Fhir.MeasureReportPopulation1)
    embeds_one(:valueCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:valueQuantity, Fhir.Quantity)
    embeds_one(:valueRange, Fhir.Range)
    embeds_one(:valueReference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          measureScoreDateTime: String.t(),
          valueBoolean: boolean(),
          _measureScoreDateTime: Fhir.Element.t(),
          _valueBoolean: Fhir.Element.t(),
          component: [Fhir.MeasureReportComponent.t()],
          extension: [Fhir.Extension.t()],
          measureScoreCodeableConcept: Fhir.CodeableConcept.t(),
          measureScoreDuration: Fhir.Duration.t(),
          measureScorePeriod: Fhir.Period.t(),
          measureScoreQuantity: Fhir.Quantity.t(),
          measureScoreRange: Fhir.Range.t(),
          modifierExtension: [Fhir.Extension.t()],
          population: [Fhir.MeasureReportPopulation1.t()],
          valueCodeableConcept: Fhir.CodeableConcept.t(),
          valueQuantity: Fhir.Quantity.t(),
          valueRange: Fhir.Range.t(),
          valueReference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :measureScoreDateTime, :valueBoolean])
    |> cast_embed(:_measureScoreDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:component, with: &Fhir.MeasureReportComponent.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:measureScoreCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:measureScoreDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:measureScorePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:measureScoreQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:measureScoreRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:population, with: &Fhir.MeasureReportPopulation1.changeset/2)
    |> cast_embed(:valueCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:valueRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:valueReference, with: &Fhir.Reference.changeset/2)
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
