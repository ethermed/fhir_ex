defmodule Fhir.CommunicationRequest do
  @moduledoc """
  A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider, the CDS system proposes that the public health agency be notified about a reportable condition.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:intent, :string)
    field(:doNotPerform, :boolean)
    field(:language, :string)
    field(:authoredOn, :string)
    field(:priority, :string)
    field(:resourceType, :string, default: "CommunicationRequest")
    field(:implicitRules, :string)
    field(:occurrenceDateTime, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:medium, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:payload, Fhir.CommunicationRequestPayload)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_authoredOn, Fhir.Element)
    embeds_one(:groupIdentifier, Fhir.Identifier)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_many(:replaces, Fhir.Reference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:recipient, Fhir.Reference)
    embeds_one(:requester, Fhir.Reference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_one(:_priority, Fhir.Element)
    embeds_one(:_intent, Fhir.Element)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:occurrencePeriod, Fhir.Period)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:informationProvider, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_doNotPerform, Fhir.Element)
    embeds_many(:about, Fhir.Reference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:statusReason, Fhir.CodeableConcept)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          intent: String.t(),
          doNotPerform: boolean(),
          language: String.t(),
          authoredOn: String.t(),
          priority: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          occurrenceDateTime: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          medium: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          payload: [Fhir.CommunicationRequestPayload.t()],
          contained: [Fhir.ResourceList.t()],
          _authoredOn: Fhir.Element.t(),
          groupIdentifier: Fhir.Identifier.t(),
          reason: [Fhir.CodeableReference.t()],
          replaces: [Fhir.Reference.t()],
          _implicitRules: Fhir.Element.t(),
          recipient: [Fhir.Reference.t()],
          requester: Fhir.Reference.t(),
          basedOn: [Fhir.Reference.t()],
          _priority: Fhir.Element.t(),
          _intent: Fhir.Element.t(),
          encounter: Fhir.Reference.t(),
          occurrencePeriod: Fhir.Period.t(),
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          informationProvider: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          _doNotPerform: Fhir.Element.t(),
          about: [Fhir.Reference.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          statusReason: Fhir.CodeableConcept.t(),
          _occurrenceDateTime: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :intent,
      :doNotPerform,
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
    |> cast_embed(:medium, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:payload, with: &Fhir.CommunicationRequestPayload.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_authoredOn, with: &Fhir.Element.changeset/2)
    |> cast_embed(:groupIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:replaces, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:recipient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:requester, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_intent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:occurrencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:informationProvider, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_doNotPerform, with: &Fhir.Element.changeset/2)
    |> cast_embed(:about, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:statusReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
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
