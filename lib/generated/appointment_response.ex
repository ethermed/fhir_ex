defmodule Fhir.AppointmentResponse do
  @moduledoc """
  A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:comment, :string)
    field(:end, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:occurrenceDate, :string)
    field(:participantStatus, :string)
    field(:proposedNewTime, :boolean)
    field(:recurrenceId, :float)
    field(:recurring, :boolean)
    field(:resourceType, :string, default: "AppointmentResponse")
    field(:start, :string)
    embeds_one(:_comment, Fhir.Element)
    embeds_one(:_end, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_occurrenceDate, Fhir.Element)
    embeds_one(:_participantStatus, Fhir.Element)
    embeds_one(:_proposedNewTime, Fhir.Element)
    embeds_one(:_recurrenceId, Fhir.Element)
    embeds_one(:_recurring, Fhir.Element)
    embeds_one(:_start, Fhir.Element)
    embeds_one(:actor, Fhir.Reference)
    embeds_one(:appointment, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:participantType, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          comment: String.t(),
          end: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          occurrenceDate: String.t(),
          participantStatus: String.t(),
          proposedNewTime: boolean(),
          recurrenceId: float(),
          recurring: boolean(),
          resourceType: String.t(),
          start: String.t(),
          _comment: Fhir.Element.t(),
          _end: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _occurrenceDate: Fhir.Element.t(),
          _participantStatus: Fhir.Element.t(),
          _proposedNewTime: Fhir.Element.t(),
          _recurrenceId: Fhir.Element.t(),
          _recurring: Fhir.Element.t(),
          _start: Fhir.Element.t(),
          actor: Fhir.Reference.t(),
          appointment: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          participantType: [Fhir.CodeableConcept.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :comment,
      :end,
      :id,
      :implicitRules,
      :language,
      :occurrenceDate,
      :participantStatus,
      :proposedNewTime,
      :recurrenceId,
      :recurring,
      :resourceType,
      :start
    ])
    |> cast_embed(:_comment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_end, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurrenceDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_participantStatus, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_proposedNewTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_recurrenceId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_recurring, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_start, with: &Fhir.Element.changeset/2)
    |> cast_embed(:actor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:appointment, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:participantType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:comment, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :end,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :occurrenceDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:participantStatus, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:proposedNewTime, [true, false])
    |> validate_inclusion(:recurring, [true, false])
    |> validate_format(
      :start,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
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
