defmodule Fhir.AccountDiagnosis do
  @moduledoc """
  A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges for a patient, cost centers, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:dateOfDiagnosis, :string)
    field(:id, :string)
    field(:onAdmission, :boolean)
    field(:sequence, :float)
    embeds_one(:_dateOfDiagnosis, Fhir.Element)
    embeds_one(:_onAdmission, Fhir.Element)
    embeds_one(:_sequence, Fhir.Element)
    embeds_one(:condition, Fhir.CodeableReference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:packageCode, Fhir.CodeableConcept)
    embeds_many(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          dateOfDiagnosis: String.t(),
          id: String.t(),
          onAdmission: boolean(),
          sequence: float(),
          _dateOfDiagnosis: Fhir.Element.t(),
          _onAdmission: Fhir.Element.t(),
          _sequence: Fhir.Element.t(),
          condition: Fhir.CodeableReference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          packageCode: [Fhir.CodeableConcept.t()],
          type: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:dateOfDiagnosis, :id, :onAdmission, :sequence])
    |> cast_embed(:_dateOfDiagnosis, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_onAdmission, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:condition, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:packageCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(
      :dateOfDiagnosis,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:onAdmission, [true, false])
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
