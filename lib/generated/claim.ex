defmodule Fhir.Claim do
  @moduledoc """
  A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:language, :string)
    field(:use, :string)
    field(:created, :string)
    field(:resourceType, :string, default: "Claim")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:patientPaid, Fhir.Money)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:billablePeriod, Fhir.Period)
    embeds_one(:enterer, Fhir.Reference)
    embeds_many(:traceNumber, Fhir.Identifier)
    embeds_one(:_created, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:diagnosis, Fhir.ClaimDiagnosis)
    embeds_one(:originalPrescription, Fhir.Reference)
    embeds_one(:total, Fhir.Money)
    embeds_many(:item, Fhir.ClaimItem)
    embeds_one(:provider, Fhir.Reference)
    embeds_one(:prescription, Fhir.Reference)
    embeds_many(:encounter, Fhir.Reference)
    embeds_many(:careTeam, Fhir.ClaimCareTeam)
    embeds_one(:subType, Fhir.CodeableConcept)
    embeds_many(:related, Fhir.ClaimRelated)
    embeds_many(:supportingInfo, Fhir.ClaimSupportingInfo)
    embeds_one(:accident, Fhir.ClaimAccident)
    embeds_many(:insurance, Fhir.ClaimInsurance)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_use, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:event, Fhir.ClaimEvent)
    embeds_one(:diagnosisRelatedGroup, Fhir.CodeableConcept)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:priority, Fhir.CodeableConcept)
    embeds_many(:procedure, Fhir.ClaimProcedure)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:fundsReserve, Fhir.CodeableConcept)
    embeds_one(:insurer, Fhir.Reference)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:facility, Fhir.Reference)
    embeds_one(:payee, Fhir.ClaimPayee)
    embeds_one(:referral, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          language: String.t(),
          use: String.t(),
          created: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          patientPaid: Fhir.Money.t(),
          contained: [Fhir.ResourceList.t()],
          billablePeriod: Fhir.Period.t(),
          enterer: Fhir.Reference.t(),
          traceNumber: [Fhir.Identifier.t()],
          _created: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          diagnosis: [Fhir.ClaimDiagnosis.t()],
          originalPrescription: Fhir.Reference.t(),
          total: Fhir.Money.t(),
          item: [Fhir.ClaimItem.t()],
          provider: Fhir.Reference.t(),
          prescription: Fhir.Reference.t(),
          encounter: [Fhir.Reference.t()],
          careTeam: [Fhir.ClaimCareTeam.t()],
          subType: Fhir.CodeableConcept.t(),
          related: [Fhir.ClaimRelated.t()],
          supportingInfo: [Fhir.ClaimSupportingInfo.t()],
          accident: Fhir.ClaimAccident.t(),
          insurance: [Fhir.ClaimInsurance.t()],
          text: Fhir.Narrative.t(),
          _use: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          event: [Fhir.ClaimEvent.t()],
          diagnosisRelatedGroup: Fhir.CodeableConcept.t(),
          meta: Fhir.Meta.t(),
          priority: Fhir.CodeableConcept.t(),
          procedure: [Fhir.ClaimProcedure.t()],
          identifier: [Fhir.Identifier.t()],
          fundsReserve: Fhir.CodeableConcept.t(),
          insurer: Fhir.Reference.t(),
          type: Fhir.CodeableConcept.t(),
          patient: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          facility: Fhir.Reference.t(),
          payee: Fhir.ClaimPayee.t(),
          referral: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:language, :use, :created, :resourceType, :implicitRules, :status, :id])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:patientPaid, with: &Fhir.Money.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:billablePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:enterer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:traceNumber, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_created, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:diagnosis, with: &Fhir.ClaimDiagnosis.changeset/2)
    |> cast_embed(:originalPrescription, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:total, with: &Fhir.Money.changeset/2)
    |> cast_embed(:item, with: &Fhir.ClaimItem.changeset/2)
    |> cast_embed(:provider, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:prescription, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:careTeam, with: &Fhir.ClaimCareTeam.changeset/2)
    |> cast_embed(:subType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:related, with: &Fhir.ClaimRelated.changeset/2)
    |> cast_embed(:supportingInfo, with: &Fhir.ClaimSupportingInfo.changeset/2)
    |> cast_embed(:accident, with: &Fhir.ClaimAccident.changeset/2)
    |> cast_embed(:insurance, with: &Fhir.ClaimInsurance.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_use, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:event, with: &Fhir.ClaimEvent.changeset/2)
    |> cast_embed(:diagnosisRelatedGroup, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:priority, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:procedure, with: &Fhir.ClaimProcedure.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:fundsReserve, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:insurer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:facility, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:payee, with: &Fhir.ClaimPayee.changeset/2)
    |> cast_embed(:referral, with: &Fhir.Reference.changeset/2)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:use, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :created,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
