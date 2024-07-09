defmodule Fhir.ServiceRequest do
  @moduledoc """
  A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:asNeededBoolean, :boolean)
    field(:instantiatesUri, :string)
    field(:intent, :string)
    field(:doNotPerform, :boolean)
    field(:instantiatesCanonical, :string)
    field(:language, :string)
    field(:authoredOn, :string)
    field(:priority, :string)
    field(:resourceType, :string, default: "ServiceRequest")
    field(:implicitRules, :string)
    field(:occurrenceDateTime, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:requisition, Fhir.Identifier)
    embeds_many(:relevantHistory, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_authoredOn, Fhir.Element)
    embeds_one(:quantityQuantity, Fhir.Quantity)
    embeds_many(:specimen, Fhir.Reference)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_many(:replaces, Fhir.Reference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:focus, Fhir.Reference)
    embeds_one(:requester, Fhir.Reference)
    embeds_one(:quantityRatio, Fhir.Ratio)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_one(:_priority, Fhir.Element)
    embeds_one(:bodyStructure, Fhir.Reference)
    embeds_one(:_intent, Fhir.Element)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:_instantiatesUri, Fhir.Element)
    embeds_many(:performer, Fhir.Reference)
    embeds_one(:occurrencePeriod, Fhir.Period)
    embeds_many(:location, Fhir.CodeableReference)
    embeds_one(:occurrenceTiming, Fhir.Timing)
    embeds_one(:code, Fhir.CodeableReference)
    embeds_many(:supportingInfo, Fhir.CodeableReference)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:insurance, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:bodySite, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:patientInstruction, Fhir.ServiceRequestPatientInstruction)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_doNotPerform, Fhir.Element)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_asNeededBoolean, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:asNeededCodeableConcept, Fhir.CodeableConcept)
    embeds_many(:orderDetail, Fhir.ServiceRequestOrderDetail)
    embeds_one(:quantityRange, Fhir.Range)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_one(:performerType, Fhir.CodeableConcept)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          asNeededBoolean: boolean(),
          instantiatesUri: String.t(),
          intent: String.t(),
          doNotPerform: boolean(),
          instantiatesCanonical: String.t(),
          language: String.t(),
          authoredOn: String.t(),
          priority: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          occurrenceDateTime: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          requisition: Fhir.Identifier.t(),
          relevantHistory: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          _authoredOn: Fhir.Element.t(),
          quantityQuantity: Fhir.Quantity.t(),
          specimen: [Fhir.Reference.t()],
          reason: [Fhir.CodeableReference.t()],
          replaces: [Fhir.Reference.t()],
          _implicitRules: Fhir.Element.t(),
          focus: [Fhir.Reference.t()],
          requester: Fhir.Reference.t(),
          quantityRatio: Fhir.Ratio.t(),
          basedOn: [Fhir.Reference.t()],
          _priority: Fhir.Element.t(),
          bodyStructure: Fhir.Reference.t(),
          _intent: Fhir.Element.t(),
          encounter: Fhir.Reference.t(),
          _instantiatesUri: [Fhir.Element.t()],
          performer: [Fhir.Reference.t()],
          occurrencePeriod: Fhir.Period.t(),
          location: [Fhir.CodeableReference.t()],
          occurrenceTiming: Fhir.Timing.t(),
          code: Fhir.CodeableReference.t(),
          supportingInfo: [Fhir.CodeableReference.t()],
          subject: Fhir.Reference.t(),
          insurance: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          bodySite: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          patientInstruction: [Fhir.ServiceRequestPatientInstruction.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          _doNotPerform: Fhir.Element.t(),
          category: [Fhir.CodeableConcept.t()],
          _asNeededBoolean: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          asNeededCodeableConcept: Fhir.CodeableConcept.t(),
          orderDetail: [Fhir.ServiceRequestOrderDetail.t()],
          quantityRange: Fhir.Range.t(),
          _occurrenceDateTime: Fhir.Element.t(),
          performerType: Fhir.CodeableConcept.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :asNeededBoolean,
      :instantiatesUri,
      :intent,
      :doNotPerform,
      :instantiatesCanonical,
      :language,
      :authoredOn,
      :priority,
      :resourceType,
      :implicitRules,
      :occurrenceDateTime,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:requisition, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:relevantHistory, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_authoredOn, with: &Fhir.Element.changeset/2)
    |> cast_embed(:quantityQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:specimen, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:replaces, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:focus, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:requester, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:quantityRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:bodyStructure, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_intent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:performer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:occurrencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:location, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:occurrenceTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:supportingInfo, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:insurance, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:patientInstruction, with: &Fhir.ServiceRequestPatientInstruction.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_doNotPerform, with: &Fhir.Element.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_asNeededBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:asNeededCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:orderDetail, with: &Fhir.ServiceRequestOrderDetail.changeset/2)
    |> cast_embed(:quantityRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:performerType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(:intent, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:doNotPerform, [true, false])
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :authoredOn,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:priority, ~r/^[^\s]+( [^\s]+)*$/)
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
