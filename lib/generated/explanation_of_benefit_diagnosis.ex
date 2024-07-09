defmodule Fhir.ExplanationOfBenefitDiagnosis do
  @moduledoc """
  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:sequence, :float)
    embeds_one(:_sequence, Fhir.Element)
    embeds_one(:diagnosisCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:diagnosisReference, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:onAdmission, Fhir.CodeableConcept)
    embeds_many(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          sequence: float(),
          _sequence: Fhir.Element.t(),
          diagnosisCodeableConcept: Fhir.CodeableConcept.t(),
          diagnosisReference: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          onAdmission: Fhir.CodeableConcept.t(),
          type: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :sequence])
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:diagnosisCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:diagnosisReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:onAdmission, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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
