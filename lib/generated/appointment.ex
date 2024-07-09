defmodule Fhir.Appointment do
  @moduledoc """
  A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:cancellationDate, :string)
    field(:start, :string)
    field(:description, :string)
    field(:language, :string)
    field(:occurrenceChanged, :boolean)
    field(:minutesDuration, :float)
    field(:created, :string)
    field(:resourceType, :string, default: "Appointment")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:end, :string)
    field(:recurrenceId, :float)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:serviceCategory, Fhir.CodeableConcept)
    embeds_one(:_start, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:participant, Fhir.AppointmentParticipant)
    embeds_one(:_recurrenceId, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:requestedPeriod, Fhir.Period)
    embeds_many(:serviceType, Fhir.CodeableReference)
    embeds_many(:slot, Fhir.Reference)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_many(:recurrenceTemplate, Fhir.AppointmentRecurrenceTemplate)
    embeds_one(:cancellationReason, Fhir.CodeableConcept)
    embeds_one(:_created, Fhir.Element)
    embeds_many(:replaces, Fhir.Reference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_occurrenceChanged, Fhir.Element)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:supportingInformation, Fhir.Reference)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:originatingAppointment, Fhir.Reference)
    embeds_many(:account, Fhir.Reference)
    embeds_one(:appointmentType, Fhir.CodeableConcept)
    embeds_many(:virtualService, Fhir.VirtualServiceDetail)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:class, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:patientInstruction, Fhir.CodeableReference)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:priority, Fhir.CodeableConcept)
    embeds_one(:_end, Fhir.Element)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:previousAppointment, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:specialty, Fhir.CodeableConcept)
    embeds_one(:_minutesDuration, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:_cancellationDate, Fhir.Element)
  end

  @type t :: %__MODULE__{
          cancellationDate: String.t(),
          start: String.t(),
          description: String.t(),
          language: String.t(),
          occurrenceChanged: boolean(),
          minutesDuration: float(),
          created: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          end: String.t(),
          recurrenceId: float(),
          id: String.t(),
          _status: Fhir.Element.t(),
          serviceCategory: [Fhir.CodeableConcept.t()],
          _start: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          participant: [Fhir.AppointmentParticipant.t()],
          _recurrenceId: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          requestedPeriod: [Fhir.Period.t()],
          serviceType: [Fhir.CodeableReference.t()],
          slot: [Fhir.Reference.t()],
          reason: [Fhir.CodeableReference.t()],
          recurrenceTemplate: [Fhir.AppointmentRecurrenceTemplate.t()],
          cancellationReason: Fhir.CodeableConcept.t(),
          _created: Fhir.Element.t(),
          replaces: [Fhir.Reference.t()],
          _implicitRules: Fhir.Element.t(),
          _occurrenceChanged: Fhir.Element.t(),
          basedOn: [Fhir.Reference.t()],
          supportingInformation: [Fhir.Reference.t()],
          _description: Fhir.Element.t(),
          originatingAppointment: Fhir.Reference.t(),
          account: [Fhir.Reference.t()],
          appointmentType: Fhir.CodeableConcept.t(),
          virtualService: [Fhir.VirtualServiceDetail.t()],
          subject: Fhir.Reference.t(),
          class: [Fhir.CodeableConcept.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          patientInstruction: [Fhir.CodeableReference.t()],
          meta: Fhir.Meta.t(),
          priority: Fhir.CodeableConcept.t(),
          _end: Fhir.Element.t(),
          identifier: [Fhir.Identifier.t()],
          previousAppointment: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          specialty: [Fhir.CodeableConcept.t()],
          _minutesDuration: Fhir.Element.t(),
          note: [Fhir.Annotation.t()],
          _cancellationDate: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :cancellationDate,
      :start,
      :description,
      :language,
      :occurrenceChanged,
      :minutesDuration,
      :created,
      :resourceType,
      :implicitRules,
      :status,
      :end,
      :recurrenceId,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:serviceCategory, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_start, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:participant, with: &Fhir.AppointmentParticipant.changeset/2)
    |> cast_embed(:_recurrenceId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:requestedPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:serviceType, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:slot, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:recurrenceTemplate, with: &Fhir.AppointmentRecurrenceTemplate.changeset/2)
    |> cast_embed(:cancellationReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_created, with: &Fhir.Element.changeset/2)
    |> cast_embed(:replaces, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurrenceChanged, with: &Fhir.Element.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:supportingInformation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:originatingAppointment, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:account, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:appointmentType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:virtualService, with: &Fhir.VirtualServiceDetail.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:class, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:patientInstruction, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:priority, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_end, with: &Fhir.Element.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:previousAppointment, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:specialty, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_minutesDuration, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:_cancellationDate, with: &Fhir.Element.changeset/2)
    |> validate_format(
      :cancellationDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(
      :start,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:occurrenceChanged, [true, false])
    |> validate_format(
      :created,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :end,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
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
