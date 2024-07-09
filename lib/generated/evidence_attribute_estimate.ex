defmodule Fhir.EvidenceAttributeEstimate do
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
    field(:level, :float)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_level, Fhir.Element)
    embeds_many(:attributeEstimate, Fhir.EvidenceAttributeEstimate)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:range, Fhir.Range)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          level: float(),
          _description: Fhir.Element.t(),
          _level: Fhir.Element.t(),
          attributeEstimate: [Fhir.EvidenceAttributeEstimate.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          quantity: Fhir.Quantity.t(),
          range: Fhir.Range.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :level])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_level, with: &Fhir.Element.changeset/2)
    |> cast_embed(:attributeEstimate, with: &Fhir.EvidenceAttributeEstimate.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:range, with: &Fhir.Range.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
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
