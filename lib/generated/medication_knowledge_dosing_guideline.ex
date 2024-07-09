defmodule Fhir.MedicationKnowledgeDosingGuideline do
  @moduledoc """
  Information about a medication that is used to support knowledge.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:administrationTreatment, Fhir.CodeableConcept)
    embeds_many(:dosage, Fhir.MedicationKnowledgeDosage)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:patientCharacteristic, Fhir.MedicationKnowledgePatientCharacteristic)
    embeds_one(:treatmentIntent, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          administrationTreatment: Fhir.CodeableConcept.t(),
          dosage: [Fhir.MedicationKnowledgeDosage.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          patientCharacteristic: [Fhir.MedicationKnowledgePatientCharacteristic.t()],
          treatmentIntent: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:administrationTreatment, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:dosage, with: &Fhir.MedicationKnowledgeDosage.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:patientCharacteristic,
      with: &Fhir.MedicationKnowledgePatientCharacteristic.changeset/2
    )
    |> cast_embed(:treatmentIntent, with: &Fhir.CodeableConcept.changeset/2)
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
