defmodule Fhir.MedicationKnowledgeDefinitional do
  @moduledoc """
  Information about a medication that is used to support knowledge.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:definition, Fhir.Reference)
    embeds_one(:doseForm, Fhir.CodeableConcept)
    embeds_many(:drugCharacteristic, Fhir.MedicationKnowledgeDrugCharacteristic)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:ingredient, Fhir.MedicationKnowledgeIngredient)
    embeds_many(:intendedRoute, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          definition: [Fhir.Reference.t()],
          doseForm: Fhir.CodeableConcept.t(),
          drugCharacteristic: [Fhir.MedicationKnowledgeDrugCharacteristic.t()],
          extension: [Fhir.Extension.t()],
          ingredient: [Fhir.MedicationKnowledgeIngredient.t()],
          intendedRoute: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:definition, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:doseForm, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:drugCharacteristic,
      with: &Fhir.MedicationKnowledgeDrugCharacteristic.changeset/2
    )
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:ingredient, with: &Fhir.MedicationKnowledgeIngredient.changeset/2)
    |> cast_embed(:intendedRoute, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
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
