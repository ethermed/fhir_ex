defmodule Fhir.RiskAssessmentPrediction do
  @moduledoc """
  An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:probabilityDecimal, :float)
    field(:rationale, :string)
    field(:relativeRisk, :float)
    embeds_one(:_probabilityDecimal, Fhir.Element)
    embeds_one(:_rationale, Fhir.Element)
    embeds_one(:_relativeRisk, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:outcome, Fhir.CodeableConcept)
    embeds_one(:probabilityRange, Fhir.Range)
    embeds_one(:qualitativeRisk, Fhir.CodeableConcept)
    embeds_one(:whenPeriod, Fhir.Period)
    embeds_one(:whenRange, Fhir.Range)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          probabilityDecimal: float(),
          rationale: String.t(),
          relativeRisk: float(),
          _probabilityDecimal: Fhir.Element.t(),
          _rationale: Fhir.Element.t(),
          _relativeRisk: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          outcome: Fhir.CodeableConcept.t(),
          probabilityRange: Fhir.Range.t(),
          qualitativeRisk: Fhir.CodeableConcept.t(),
          whenPeriod: Fhir.Period.t(),
          whenRange: Fhir.Range.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :probabilityDecimal, :rationale, :relativeRisk])
    |> cast_embed(:_probabilityDecimal, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_rationale, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_relativeRisk, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:outcome, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:probabilityRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:qualitativeRisk, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:whenPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:whenRange, with: &Fhir.Range.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:rationale, ~r/^^[\s\S]+$$/)
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
