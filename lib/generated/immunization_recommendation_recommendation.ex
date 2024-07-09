defmodule Fhir.ImmunizationRecommendationRecommendation do
  @moduledoc """
  A patient's point-in-time set of recommendations (i.e. forecasting) according to a published schedule with optional supporting justification.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:doseNumber, :string)
    field(:id, :string)
    field(:series, :string)
    field(:seriesDoses, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_doseNumber, Fhir.Element)
    embeds_one(:_series, Fhir.Element)
    embeds_one(:_seriesDoses, Fhir.Element)
    embeds_many(:contraindicatedVaccineCode, Fhir.CodeableConcept)
    embeds_many(:dateCriterion, Fhir.ImmunizationRecommendationDateCriterion)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:forecastReason, Fhir.CodeableConcept)
    embeds_one(:forecastStatus, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:supportingImmunization, Fhir.Reference)
    embeds_many(:supportingPatientInformation, Fhir.Reference)
    embeds_many(:targetDisease, Fhir.CodeableConcept)
    embeds_many(:vaccineCode, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          doseNumber: String.t(),
          id: String.t(),
          series: String.t(),
          seriesDoses: String.t(),
          _description: Fhir.Element.t(),
          _doseNumber: Fhir.Element.t(),
          _series: Fhir.Element.t(),
          _seriesDoses: Fhir.Element.t(),
          contraindicatedVaccineCode: [Fhir.CodeableConcept.t()],
          dateCriterion: [Fhir.ImmunizationRecommendationDateCriterion.t()],
          extension: [Fhir.Extension.t()],
          forecastReason: [Fhir.CodeableConcept.t()],
          forecastStatus: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          supportingImmunization: [Fhir.Reference.t()],
          supportingPatientInformation: [Fhir.Reference.t()],
          targetDisease: [Fhir.CodeableConcept.t()],
          vaccineCode: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :doseNumber, :id, :series, :seriesDoses])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_doseNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_series, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_seriesDoses, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contraindicatedVaccineCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:dateCriterion, with: &Fhir.ImmunizationRecommendationDateCriterion.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:forecastReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:forecastStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:supportingImmunization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:supportingPatientInformation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:targetDisease, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:vaccineCode, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:doseNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:series, ~r/^^[\s\S]+$$/)
    |> validate_format(:seriesDoses, ~r/^^[\s\S]+$$/)
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
