defmodule Fhir.Procedure do
  @moduledoc """
  An action that is or was performed on or for a patient, practitioner, device, organization, or location. For example, this can be a physical intervention on a patient like an operation, or less invasive like long term services, counseling, or hypnotherapy.  This can be a quality or safety inspection for a location, organization, or device.  This can be an accreditation procedure on a practitioner for licensing.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:instantiatesUri, :string)
    field(:recorded, :string)
    field(:instantiatesCanonical, :string)
    field(:reportedBoolean, :boolean)
    field(:language, :string)
    field(:resourceType, :string, default: "Procedure")
    field(:implicitRules, :string)
    field(:occurrenceDateTime, :string)
    field(:status, :string)
    field(:occurrenceString, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_occurrenceString, Fhir.Element)
    embeds_one(:reportedReference, Fhir.Reference)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_many(:focalDevice, Fhir.ProcedureFocalDevice)
    embeds_many(:followUp, Fhir.CodeableConcept)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_recorded, Fhir.Element)
    embeds_one(:focus, Fhir.Reference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_one(:outcome, Fhir.CodeableConcept)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:_instantiatesUri, Fhir.Element)
    embeds_many(:performer, Fhir.ProcedurePerformer)
    embeds_one(:occurrencePeriod, Fhir.Period)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:occurrenceTiming, Fhir.Timing)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:supportingInfo, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:used, Fhir.CodeableReference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:bodySite, Fhir.CodeableConcept)
    embeds_one(:_reportedBoolean, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:partOf, Fhir.Reference)
    embeds_many(:complication, Fhir.CodeableReference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:recorder, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:occurrenceAge, Fhir.Age)
    embeds_many(:report, Fhir.Reference)
    embeds_one(:statusReason, Fhir.CodeableConcept)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:occurrenceRange, Fhir.Range)
  end

  @type t :: %__MODULE__{
          instantiatesUri: String.t(),
          recorded: String.t(),
          instantiatesCanonical: String.t(),
          reportedBoolean: boolean(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          occurrenceDateTime: String.t(),
          status: String.t(),
          occurrenceString: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          _occurrenceString: Fhir.Element.t(),
          reportedReference: Fhir.Reference.t(),
          reason: [Fhir.CodeableReference.t()],
          focalDevice: [Fhir.ProcedureFocalDevice.t()],
          followUp: [Fhir.CodeableConcept.t()],
          _implicitRules: Fhir.Element.t(),
          _recorded: Fhir.Element.t(),
          focus: Fhir.Reference.t(),
          basedOn: [Fhir.Reference.t()],
          outcome: Fhir.CodeableConcept.t(),
          encounter: Fhir.Reference.t(),
          _instantiatesUri: [Fhir.Element.t()],
          performer: [Fhir.ProcedurePerformer.t()],
          occurrencePeriod: Fhir.Period.t(),
          location: Fhir.Reference.t(),
          occurrenceTiming: Fhir.Timing.t(),
          code: Fhir.CodeableConcept.t(),
          supportingInfo: [Fhir.Reference.t()],
          subject: Fhir.Reference.t(),
          used: [Fhir.CodeableReference.t()],
          text: Fhir.Narrative.t(),
          bodySite: [Fhir.CodeableConcept.t()],
          _reportedBoolean: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          partOf: [Fhir.Reference.t()],
          complication: [Fhir.CodeableReference.t()],
          category: [Fhir.CodeableConcept.t()],
          recorder: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          occurrenceAge: Fhir.Age.t(),
          report: [Fhir.Reference.t()],
          statusReason: Fhir.CodeableConcept.t(),
          _occurrenceDateTime: Fhir.Element.t(),
          note: [Fhir.Annotation.t()],
          occurrenceRange: Fhir.Range.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :instantiatesUri,
      :recorded,
      :instantiatesCanonical,
      :reportedBoolean,
      :language,
      :resourceType,
      :implicitRules,
      :occurrenceDateTime,
      :status,
      :occurrenceString,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_occurrenceString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:reportedReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:focalDevice, with: &Fhir.ProcedureFocalDevice.changeset/2)
    |> cast_embed(:followUp, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_recorded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:focus, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:outcome, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:performer, with: &Fhir.ProcedurePerformer.changeset/2)
    |> cast_embed(:occurrencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:occurrenceTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:supportingInfo, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:used, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_reportedBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:complication, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:recorder, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:occurrenceAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:report, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:statusReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:occurrenceRange, with: &Fhir.Range.changeset/2)
    |> validate_format(
      :recorded,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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
