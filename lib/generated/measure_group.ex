defmodule Fhir.MeasureGroup do
  @moduledoc """
  The Measure resource provides the definition of a quality measure.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:basis, :string)
    field(:description, :string)
    field(:id, :string)
    field(:library, :string)
    field(:linkId, :string)
    field(:rateAggregation, :string)
    embeds_one(:_basis, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_linkId, Fhir.Element)
    embeds_one(:_rateAggregation, Fhir.Element)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:improvementNotation, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:population, Fhir.MeasurePopulation)
    embeds_one(:scoring, Fhir.CodeableConcept)
    embeds_one(:scoringUnit, Fhir.CodeableConcept)
    embeds_many(:stratifier, Fhir.MeasureStratifier)
    embeds_one(:subjectCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:subjectReference, Fhir.Reference)
    embeds_many(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          basis: String.t(),
          description: String.t(),
          id: String.t(),
          library: String.t(),
          linkId: String.t(),
          rateAggregation: String.t(),
          _basis: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _linkId: Fhir.Element.t(),
          _rateAggregation: Fhir.Element.t(),
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          improvementNotation: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          population: [Fhir.MeasurePopulation.t()],
          scoring: Fhir.CodeableConcept.t(),
          scoringUnit: Fhir.CodeableConcept.t(),
          stratifier: [Fhir.MeasureStratifier.t()],
          subjectCodeableConcept: Fhir.CodeableConcept.t(),
          subjectReference: Fhir.Reference.t(),
          type: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:basis, :description, :id, :library, :linkId, :rateAggregation])
    |> cast_embed(:_basis, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_rateAggregation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:improvementNotation, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:population, with: &Fhir.MeasurePopulation.changeset/2)
    |> cast_embed(:scoring, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:scoringUnit, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:stratifier, with: &Fhir.MeasureStratifier.changeset/2)
    |> cast_embed(:subjectCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subjectReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:basis, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:linkId, ~r/^^[\s\S]+$$/)
    |> validate_format(:rateAggregation, ~r/^^[\s\S]+$$/)
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
