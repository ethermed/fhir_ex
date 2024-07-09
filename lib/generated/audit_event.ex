defmodule Fhir.AuditEvent do
  @moduledoc """
  A record of an event relevant for purposes such as operations, privacy, security, maintenance, and performance analysis.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:action, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:occurredDateTime, :string)
    field(:recorded, :string)
    field(:resourceType, :string, default: "AuditEvent")
    field(:severity, :string)
    embeds_one(:_action, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_occurredDateTime, Fhir.Element)
    embeds_one(:_recorded, Fhir.Element)
    embeds_one(:_severity, Fhir.Element)
    embeds_many(:agent, Fhir.AuditEventAgent)
    embeds_many(:authorization, Fhir.CodeableConcept)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:entity, Fhir.AuditEventEntity)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:occurredPeriod, Fhir.Period)
    embeds_one(:outcome, Fhir.AuditEventOutcome)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:source, Fhir.AuditEventSource)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          action: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          occurredDateTime: String.t(),
          recorded: String.t(),
          resourceType: String.t(),
          severity: String.t(),
          _action: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _occurredDateTime: Fhir.Element.t(),
          _recorded: Fhir.Element.t(),
          _severity: Fhir.Element.t(),
          agent: [Fhir.AuditEventAgent.t()],
          authorization: [Fhir.CodeableConcept.t()],
          basedOn: [Fhir.Reference.t()],
          category: [Fhir.CodeableConcept.t()],
          code: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          encounter: Fhir.Reference.t(),
          entity: [Fhir.AuditEventEntity.t()],
          extension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          occurredPeriod: Fhir.Period.t(),
          outcome: Fhir.AuditEventOutcome.t(),
          patient: Fhir.Reference.t(),
          source: Fhir.AuditEventSource.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :action,
      :id,
      :implicitRules,
      :language,
      :occurredDateTime,
      :recorded,
      :resourceType,
      :severity
    ])
    |> cast_embed(:_action, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurredDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_recorded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_severity, with: &Fhir.Element.changeset/2)
    |> cast_embed(:agent, with: &Fhir.AuditEventAgent.changeset/2)
    |> cast_embed(:authorization, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:entity, with: &Fhir.AuditEventEntity.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:occurredPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:outcome, with: &Fhir.AuditEventOutcome.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:source, with: &Fhir.AuditEventSource.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:action, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :recorded,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
    |> validate_format(:severity, ~r/^[^\s]+( [^\s]+)*$/)
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
