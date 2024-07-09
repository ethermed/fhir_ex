defmodule Fhir.ClaimResponse do
  @moduledoc """
  This resource provides the adjudication details from the processing of a Claim resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:outcome, :string)
    field(:language, :string)
    field(:use, :string)
    field(:created, :string)
    field(:resourceType, :string, default: "ClaimResponse")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:disposition, :string)
    field(:id, :string)
    field(:preAuthRef, :string)
    embeds_many(:error, Fhir.ClaimResponseError)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_outcome, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:form, Fhir.Attachment)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:preAuthPeriod, Fhir.Period)
    embeds_one(:requestor, Fhir.Reference)
    embeds_many(:addItem, Fhir.ClaimResponseAddItem)
    embeds_many(:traceNumber, Fhir.Identifier)
    embeds_one(:_created, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:formCode, Fhir.CodeableConcept)
    embeds_many(:total, Fhir.ClaimResponseTotal)
    embeds_one(:_preAuthRef, Fhir.Element)
    embeds_many(:item, Fhir.ClaimResponseItem)
    embeds_one(:decision, Fhir.CodeableConcept)
    embeds_one(:payment, Fhir.ClaimResponsePayment)
    embeds_many(:communicationRequest, Fhir.Reference)
    embeds_one(:_disposition, Fhir.Element)
    embeds_many(:encounter, Fhir.Reference)
    embeds_one(:subType, Fhir.CodeableConcept)
    embeds_one(:payeeType, Fhir.CodeableConcept)
    embeds_many(:insurance, Fhir.ClaimResponseInsurance)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_use, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:event, Fhir.ClaimResponseEvent)
    embeds_one(:diagnosisRelatedGroup, Fhir.CodeableConcept)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:adjudication, Fhir.ClaimResponseAdjudication)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:fundsReserve, Fhir.CodeableConcept)
    embeds_one(:insurer, Fhir.Reference)
    embeds_many(:processNote, Fhir.ClaimResponseProcessNote)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:request, Fhir.Reference)
  end

  @type t :: %__MODULE__{
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
          error: [Fhir.ClaimResponseError.t()],
          _status: Fhir.Element.t(),
          _outcome: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          form: Fhir.Attachment.t(),
          contained: [Fhir.ResourceList.t()],
          preAuthPeriod: Fhir.Period.t(),
          requestor: Fhir.Reference.t(),
          addItem: [Fhir.ClaimResponseAddItem.t()],
          traceNumber: [Fhir.Identifier.t()],
          _created: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          formCode: Fhir.CodeableConcept.t(),
          total: [Fhir.ClaimResponseTotal.t()],
          _preAuthRef: Fhir.Element.t(),
          item: [Fhir.ClaimResponseItem.t()],
          decision: Fhir.CodeableConcept.t(),
          payment: Fhir.ClaimResponsePayment.t(),
          communicationRequest: [Fhir.Reference.t()],
          _disposition: Fhir.Element.t(),
          encounter: [Fhir.Reference.t()],
          subType: Fhir.CodeableConcept.t(),
          payeeType: Fhir.CodeableConcept.t(),
          insurance: [Fhir.ClaimResponseInsurance.t()],
          text: Fhir.Narrative.t(),
          _use: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          event: [Fhir.ClaimResponseEvent.t()],
          diagnosisRelatedGroup: Fhir.CodeableConcept.t(),
          meta: Fhir.Meta.t(),
          adjudication: [Fhir.ClaimResponseAdjudication.t()],
          identifier: [Fhir.Identifier.t()],
          fundsReserve: Fhir.CodeableConcept.t(),
          insurer: Fhir.Reference.t(),
          processNote: [Fhir.ClaimResponseProcessNote.t()],
          type: Fhir.CodeableConcept.t(),
          patient: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          request: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
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
    |> cast_embed(:error, with: &Fhir.ClaimResponseError.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_outcome, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:form, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:preAuthPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:requestor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:addItem, with: &Fhir.ClaimResponseAddItem.changeset/2)
    |> cast_embed(:traceNumber, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_created, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:formCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:total, with: &Fhir.ClaimResponseTotal.changeset/2)
    |> cast_embed(:_preAuthRef, with: &Fhir.Element.changeset/2)
    |> cast_embed(:item, with: &Fhir.ClaimResponseItem.changeset/2)
    |> cast_embed(:decision, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:payment, with: &Fhir.ClaimResponsePayment.changeset/2)
    |> cast_embed(:communicationRequest, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_disposition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:payeeType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:insurance, with: &Fhir.ClaimResponseInsurance.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_use, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:event, with: &Fhir.ClaimResponseEvent.changeset/2)
    |> cast_embed(:diagnosisRelatedGroup, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:adjudication, with: &Fhir.ClaimResponseAdjudication.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:fundsReserve, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:insurer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:processNote, with: &Fhir.ClaimResponseProcessNote.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:request, with: &Fhir.Reference.changeset/2)
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
    |> validate_format(:preAuthRef, ~r/^^[\s\S]+$$/)
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
