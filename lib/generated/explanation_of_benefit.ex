defmodule Fhir.ExplanationOfBenefit do
  @moduledoc """
  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:precedence, :float)
    field(:outcome, :string)
    field(:language, :string)
    field(:use, :string)
    field(:created, :string)
    field(:resourceType, :string, default: "ExplanationOfBenefit")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:disposition, :string)
    field(:id, :string)
    field(:preAuthRef, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_outcome, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:patientPaid, Fhir.Money)
    embeds_one(:form, Fhir.Attachment)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:billablePeriod, Fhir.Period)
    embeds_one(:enterer, Fhir.Reference)
    embeds_many(:addItem, Fhir.ExplanationOfBenefitAddItem)
    embeds_many(:traceNumber, Fhir.Identifier)
    embeds_one(:_created, Fhir.Element)
    embeds_many(:preAuthRefPeriod, Fhir.Period)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:formCode, Fhir.CodeableConcept)
    embeds_many(:diagnosis, Fhir.ExplanationOfBenefitDiagnosis)
    embeds_one(:originalPrescription, Fhir.Reference)
    embeds_many(:total, Fhir.ExplanationOfBenefitTotal)
    embeds_many(:_preAuthRef, Fhir.Element)
    embeds_many(:item, Fhir.ExplanationOfBenefitItem)
    embeds_one(:provider, Fhir.Reference)
    embeds_one(:decision, Fhir.CodeableConcept)
    embeds_one(:payment, Fhir.ExplanationOfBenefitPayment)
    embeds_one(:_disposition, Fhir.Element)
    embeds_one(:prescription, Fhir.Reference)
    embeds_many(:encounter, Fhir.Reference)
    embeds_many(:careTeam, Fhir.ExplanationOfBenefitCareTeam)
    embeds_one(:subType, Fhir.CodeableConcept)
    embeds_many(:related, Fhir.ExplanationOfBenefitRelated)
    embeds_many(:supportingInfo, Fhir.ExplanationOfBenefitSupportingInfo)
    embeds_one(:accident, Fhir.ExplanationOfBenefitAccident)
    embeds_many(:insurance, Fhir.ExplanationOfBenefitInsurance)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:benefitPeriod, Fhir.Period)
    embeds_one(:_use, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:claimResponse, Fhir.Reference)
    embeds_many(:benefitBalance, Fhir.ExplanationOfBenefitBenefitBalance)
    embeds_many(:event, Fhir.ExplanationOfBenefitEvent)
    embeds_one(:diagnosisRelatedGroup, Fhir.CodeableConcept)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:priority, Fhir.CodeableConcept)
    embeds_many(:adjudication, Fhir.ExplanationOfBenefitAdjudication)
    embeds_many(:procedure, Fhir.ExplanationOfBenefitProcedure)
    embeds_one(:fundsReserveRequested, Fhir.CodeableConcept)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:fundsReserve, Fhir.CodeableConcept)
    embeds_one(:insurer, Fhir.Reference)
    embeds_one(:_precedence, Fhir.Element)
    embeds_many(:processNote, Fhir.ExplanationOfBenefitProcessNote)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:facility, Fhir.Reference)
    embeds_one(:payee, Fhir.ExplanationOfBenefitPayee)
    embeds_one(:referral, Fhir.Reference)
    embeds_one(:claim, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          precedence: float(),
          outcome: String.t(),
          language: String.t(),
          use: String.t(),
          created: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          disposition: String.t(),
          id: String.t(),
          preAuthRef: String.t(),
          _status: Fhir.Element.t(),
          _outcome: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          patientPaid: Fhir.Money.t(),
          form: Fhir.Attachment.t(),
          contained: [Fhir.ResourceList.t()],
          billablePeriod: Fhir.Period.t(),
          enterer: Fhir.Reference.t(),
          addItem: [Fhir.ExplanationOfBenefitAddItem.t()],
          traceNumber: [Fhir.Identifier.t()],
          _created: Fhir.Element.t(),
          preAuthRefPeriod: [Fhir.Period.t()],
          _implicitRules: Fhir.Element.t(),
          formCode: Fhir.CodeableConcept.t(),
          diagnosis: [Fhir.ExplanationOfBenefitDiagnosis.t()],
          originalPrescription: Fhir.Reference.t(),
          total: [Fhir.ExplanationOfBenefitTotal.t()],
          _preAuthRef: [Fhir.Element.t()],
          item: [Fhir.ExplanationOfBenefitItem.t()],
          provider: Fhir.Reference.t(),
          decision: Fhir.CodeableConcept.t(),
          payment: Fhir.ExplanationOfBenefitPayment.t(),
          _disposition: Fhir.Element.t(),
          prescription: Fhir.Reference.t(),
          encounter: [Fhir.Reference.t()],
          careTeam: [Fhir.ExplanationOfBenefitCareTeam.t()],
          subType: Fhir.CodeableConcept.t(),
          related: [Fhir.ExplanationOfBenefitRelated.t()],
          supportingInfo: [Fhir.ExplanationOfBenefitSupportingInfo.t()],
          accident: Fhir.ExplanationOfBenefitAccident.t(),
          insurance: [Fhir.ExplanationOfBenefitInsurance.t()],
          text: Fhir.Narrative.t(),
          benefitPeriod: Fhir.Period.t(),
          _use: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          claimResponse: Fhir.Reference.t(),
          benefitBalance: [Fhir.ExplanationOfBenefitBenefitBalance.t()],
          event: [Fhir.ExplanationOfBenefitEvent.t()],
          diagnosisRelatedGroup: Fhir.CodeableConcept.t(),
          meta: Fhir.Meta.t(),
          priority: Fhir.CodeableConcept.t(),
          adjudication: [Fhir.ExplanationOfBenefitAdjudication.t()],
          procedure: [Fhir.ExplanationOfBenefitProcedure.t()],
          fundsReserveRequested: Fhir.CodeableConcept.t(),
          identifier: [Fhir.Identifier.t()],
          fundsReserve: Fhir.CodeableConcept.t(),
          insurer: Fhir.Reference.t(),
          _precedence: Fhir.Element.t(),
          processNote: [Fhir.ExplanationOfBenefitProcessNote.t()],
          type: Fhir.CodeableConcept.t(),
          patient: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          facility: Fhir.Reference.t(),
          payee: Fhir.ExplanationOfBenefitPayee.t(),
          referral: Fhir.Reference.t(),
          claim: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :precedence,
      :outcome,
      :language,
      :use,
      :created,
      :resourceType,
      :implicitRules,
      :status,
      :disposition,
      :id,
      :preAuthRef
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_outcome, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:patientPaid, with: &Fhir.Money.changeset/2)
    |> cast_embed(:form, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:billablePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:enterer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:addItem, with: &Fhir.ExplanationOfBenefitAddItem.changeset/2)
    |> cast_embed(:traceNumber, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_created, with: &Fhir.Element.changeset/2)
    |> cast_embed(:preAuthRefPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:formCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:diagnosis, with: &Fhir.ExplanationOfBenefitDiagnosis.changeset/2)
    |> cast_embed(:originalPrescription, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:total, with: &Fhir.ExplanationOfBenefitTotal.changeset/2)
    |> cast_embed(:_preAuthRef, with: &Fhir.Element.changeset/2)
    |> cast_embed(:item, with: &Fhir.ExplanationOfBenefitItem.changeset/2)
    |> cast_embed(:provider, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:decision, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:payment, with: &Fhir.ExplanationOfBenefitPayment.changeset/2)
    |> cast_embed(:_disposition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:prescription, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:careTeam, with: &Fhir.ExplanationOfBenefitCareTeam.changeset/2)
    |> cast_embed(:subType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:related, with: &Fhir.ExplanationOfBenefitRelated.changeset/2)
    |> cast_embed(:supportingInfo, with: &Fhir.ExplanationOfBenefitSupportingInfo.changeset/2)
    |> cast_embed(:accident, with: &Fhir.ExplanationOfBenefitAccident.changeset/2)
    |> cast_embed(:insurance, with: &Fhir.ExplanationOfBenefitInsurance.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:benefitPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_use, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:claimResponse, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:benefitBalance, with: &Fhir.ExplanationOfBenefitBenefitBalance.changeset/2)
    |> cast_embed(:event, with: &Fhir.ExplanationOfBenefitEvent.changeset/2)
    |> cast_embed(:diagnosisRelatedGroup, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:priority, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:adjudication, with: &Fhir.ExplanationOfBenefitAdjudication.changeset/2)
    |> cast_embed(:procedure, with: &Fhir.ExplanationOfBenefitProcedure.changeset/2)
    |> cast_embed(:fundsReserveRequested, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:fundsReserve, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:insurer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_precedence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:processNote, with: &Fhir.ExplanationOfBenefitProcessNote.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:facility, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:payee, with: &Fhir.ExplanationOfBenefitPayee.changeset/2)
    |> cast_embed(:referral, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:claim, with: &Fhir.Reference.changeset/2)
    |> validate_format(:outcome, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:use, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :created,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:disposition, ~r/^^[\s\S]+$$/)
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
