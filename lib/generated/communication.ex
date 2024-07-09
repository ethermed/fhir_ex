defmodule Fhir.Communication do
  @moduledoc """
  A clinical or business level record of information being transmitted or shared; e.g. an alert that was sent to a responsible provider, a public health agency communication to a provider/reporter in response to a case report for a reportable condition.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:instantiatesUri, :string)
    field(:received, :string)
    field(:sent, :string)
    field(:instantiatesCanonical, :string)
    field(:language, :string)
    field(:priority, :string)
    field(:resourceType, :string, default: "Communication")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:medium, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:payload, Fhir.CommunicationPayload)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:inResponseTo, Fhir.Reference)
    embeds_many(:recipient, Fhir.Reference)
    embeds_one(:sender, Fhir.Reference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_one(:_priority, Fhir.Element)
    embeds_one(:topic, Fhir.CodeableConcept)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:_instantiatesUri, Fhir.Element)
    embeds_one(:_received, Fhir.Element)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_sent, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:about, Fhir.Reference)
    embeds_many(:partOf, Fhir.Reference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:statusReason, Fhir.CodeableConcept)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          instantiatesUri: String.t(),
          received: String.t(),
          sent: String.t(),
          instantiatesCanonical: String.t(),
          language: String.t(),
          priority: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          medium: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          payload: [Fhir.CommunicationPayload.t()],
          contained: [Fhir.ResourceList.t()],
          reason: [Fhir.CodeableReference.t()],
          _implicitRules: Fhir.Element.t(),
          inResponseTo: [Fhir.Reference.t()],
          recipient: [Fhir.Reference.t()],
          sender: Fhir.Reference.t(),
          basedOn: [Fhir.Reference.t()],
          _priority: Fhir.Element.t(),
          topic: Fhir.CodeableConcept.t(),
          encounter: Fhir.Reference.t(),
          _instantiatesUri: [Fhir.Element.t()],
          _received: Fhir.Element.t(),
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          _sent: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          about: [Fhir.Reference.t()],
          partOf: [Fhir.Reference.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          statusReason: Fhir.CodeableConcept.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :instantiatesUri,
      :received,
      :sent,
      :instantiatesCanonical,
      :language,
      :priority,
      :resourceType,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:medium, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:payload, with: &Fhir.CommunicationPayload.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:inResponseTo, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:recipient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:sender, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:topic, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_received, with: &Fhir.Element.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_sent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:about, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:statusReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :received,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(
      :sent,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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
