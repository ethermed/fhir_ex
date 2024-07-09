defmodule Fhir.EvidenceVariable do
  @moduledoc """
  The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:handling, :string)
    field(:id, :string)
    embeds_one(:_handling, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:valueCategory, Fhir.CodeableConcept)
    embeds_many(:valueQuantity, Fhir.Quantity)
    embeds_many(:valueRange, Fhir.Range)
    embeds_one(:variableDefinition, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          handling: String.t(),
          id: String.t(),
          _handling: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          valueCategory: [Fhir.CodeableConcept.t()],
          valueQuantity: [Fhir.Quantity.t()],
          valueRange: [Fhir.Range.t()],
          variableDefinition: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:handling, :id])
    |> cast_embed(:_handling, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:valueCategory, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:valueRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:variableDefinition, with: &Fhir.Reference.changeset/2)
    |> validate_format(:handling, ~r/^[^\s]+( [^\s]+)*$/)
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
