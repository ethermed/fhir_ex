defmodule Fhir.EvidenceStatistic do
  @moduledoc """
  The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:numberAffected, :float)
    field(:numberOfEvents, :float)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_numberAffected, Fhir.Element)
    embeds_one(:_numberOfEvents, Fhir.Element)
    embeds_many(:attributeEstimate, Fhir.EvidenceAttributeEstimate)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modelCharacteristic, Fhir.EvidenceModelCharacteristic)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:sampleSize, Fhir.EvidenceSampleSize)
    embeds_one(:statisticType, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          numberAffected: float(),
          numberOfEvents: float(),
          _description: Fhir.Element.t(),
          _numberAffected: Fhir.Element.t(),
          _numberOfEvents: Fhir.Element.t(),
          attributeEstimate: [Fhir.EvidenceAttributeEstimate.t()],
          category: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modelCharacteristic: [Fhir.EvidenceModelCharacteristic.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          quantity: Fhir.Quantity.t(),
          sampleSize: Fhir.EvidenceSampleSize.t(),
          statisticType: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :numberAffected, :numberOfEvents])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_numberAffected, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_numberOfEvents, with: &Fhir.Element.changeset/2)
    |> cast_embed(:attributeEstimate, with: &Fhir.EvidenceAttributeEstimate.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modelCharacteristic, with: &Fhir.EvidenceModelCharacteristic.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:sampleSize, with: &Fhir.EvidenceSampleSize.changeset/2)
    |> cast_embed(:statisticType, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:numberAffected, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:numberOfEvents, ~r/^[0]|([1-9][0-9]*)$/)
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
