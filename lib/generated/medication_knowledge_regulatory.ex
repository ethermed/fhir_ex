defmodule Fhir.MedicationKnowledgeRegulatory do
  @moduledoc """
  Information about a medication that is used to support knowledge.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:maxDispense, Fhir.MedicationKnowledgeMaxDispense)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:regulatoryAuthority, Fhir.Reference)
    embeds_many(:schedule, Fhir.CodeableConcept)
    embeds_many(:substitution, Fhir.MedicationKnowledgeSubstitution)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          maxDispense: Fhir.MedicationKnowledgeMaxDispense.t(),
          modifierExtension: [Fhir.Extension.t()],
          regulatoryAuthority: Fhir.Reference.t(),
          schedule: [Fhir.CodeableConcept.t()],
          substitution: [Fhir.MedicationKnowledgeSubstitution.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:maxDispense, with: &Fhir.MedicationKnowledgeMaxDispense.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:regulatoryAuthority, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:schedule, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:substitution, with: &Fhir.MedicationKnowledgeSubstitution.changeset/2)
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
