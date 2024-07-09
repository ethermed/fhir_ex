defmodule Fhir.ClinicalUseDefinitionUndesirableEffect do
  @moduledoc """
  A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:classification, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:frequencyOfOccurrence, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:symptomConditionEffect, Fhir.CodeableReference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          classification: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          frequencyOfOccurrence: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          symptomConditionEffect: Fhir.CodeableReference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:classification, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:frequencyOfOccurrence, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:symptomConditionEffect, with: &Fhir.CodeableReference.changeset/2)
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
