defmodule Fhir.EncounterAdmission do
  @moduledoc """
  An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient.  Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:admitSource, Fhir.CodeableConcept)
    embeds_one(:destination, Fhir.Reference)
    embeds_one(:dischargeDisposition, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:origin, Fhir.Reference)
    embeds_one(:preAdmissionIdentifier, Fhir.Identifier)
    embeds_one(:reAdmission, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          admitSource: Fhir.CodeableConcept.t(),
          destination: Fhir.Reference.t(),
          dischargeDisposition: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          origin: Fhir.Reference.t(),
          preAdmissionIdentifier: Fhir.Identifier.t(),
          reAdmission: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:admitSource, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:destination, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:dischargeDisposition, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:origin, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:preAdmissionIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:reAdmission, with: &Fhir.CodeableConcept.changeset/2)
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
