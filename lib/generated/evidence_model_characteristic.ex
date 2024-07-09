defmodule Fhir.EvidenceModelCharacteristic do
  @moduledoc """
  The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:attributeEstimate, Fhir.EvidenceAttributeEstimate)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:value, Fhir.Quantity)
    embeds_many(:variable, Fhir.EvidenceVariable)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          attributeEstimate: [Fhir.EvidenceAttributeEstimate.t()],
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          value: Fhir.Quantity.t(),
          variable: [Fhir.EvidenceVariable.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:attributeEstimate, with: &Fhir.EvidenceAttributeEstimate.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:value, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:variable, with: &Fhir.EvidenceVariable.changeset/2)
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
