defmodule Fhir.Task do
  @moduledoc """
  A task to be performed.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:instantiatesUri, :string)
    field(:description, :string)
    field(:intent, :string)
    field(:doNotPerform, :boolean)
    field(:instantiatesCanonical, :string)
    field(:language, :string)
    field(:authoredOn, :string)
    field(:priority, :string)
    field(:resourceType, :string, default: "Task")
    field(:lastModified, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:for, Fhir.Reference)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:relevantHistory, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:requestedPeriod, Fhir.Period)
    embeds_one(:_authoredOn, Fhir.Element)
    embeds_one(:groupIdentifier, Fhir.Identifier)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:focus, Fhir.Reference)
    embeds_one(:requester, Fhir.Reference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:input, Fhir.TaskInput)
    embeds_one(:_priority, Fhir.Element)
    embeds_one(:_intent, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:executionPeriod, Fhir.Period)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:_instantiatesUri, Fhir.Element)
    embeds_many(:performer, Fhir.TaskPerformer)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:insurance, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_lastModified, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:businessStatus, Fhir.CodeableConcept)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:requestedPerformer, Fhir.CodeableReference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_doNotPerform, Fhir.Element)
    embeds_many(:partOf, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:statusReason, Fhir.CodeableReference)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:restriction, Fhir.TaskRestriction)
    embeds_one(:owner, Fhir.Reference)
    embeds_many(:output, Fhir.TaskOutput)
  end

  @type t :: %__MODULE__{
          instantiatesUri: String.t(),
          description: String.t(),
          intent: String.t(),
          doNotPerform: boolean(),
          instantiatesCanonical: String.t(),
          language: String.t(),
          authoredOn: String.t(),
          priority: String.t(),
          resourceType: String.t(),
          lastModified: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          for: Fhir.Reference.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          relevantHistory: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          requestedPeriod: Fhir.Period.t(),
          _authoredOn: Fhir.Element.t(),
          groupIdentifier: Fhir.Identifier.t(),
          reason: [Fhir.CodeableReference.t()],
          _implicitRules: Fhir.Element.t(),
          focus: Fhir.Reference.t(),
          requester: Fhir.Reference.t(),
          basedOn: [Fhir.Reference.t()],
          input: [Fhir.TaskInput.t()],
          _priority: Fhir.Element.t(),
          _intent: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          executionPeriod: Fhir.Period.t(),
          encounter: Fhir.Reference.t(),
          _instantiatesUri: Fhir.Element.t(),
          performer: [Fhir.TaskPerformer.t()],
          location: Fhir.Reference.t(),
          code: Fhir.CodeableConcept.t(),
          insurance: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          _lastModified: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          businessStatus: Fhir.CodeableConcept.t(),
          meta: Fhir.Meta.t(),
          requestedPerformer: [Fhir.CodeableReference.t()],
          identifier: [Fhir.Identifier.t()],
          _doNotPerform: Fhir.Element.t(),
          partOf: [Fhir.Reference.t()],
          _language: Fhir.Element.t(),
          statusReason: Fhir.CodeableReference.t(),
          note: [Fhir.Annotation.t()],
          restriction: Fhir.TaskRestriction.t(),
          owner: Fhir.Reference.t(),
          output: [Fhir.TaskOutput.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :instantiatesUri,
      :description,
      :intent,
      :doNotPerform,
      :instantiatesCanonical,
      :language,
      :authoredOn,
      :priority,
      :resourceType,
      :lastModified,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:for, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:relevantHistory, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:requestedPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_authoredOn, with: &Fhir.Element.changeset/2)
    |> cast_embed(:groupIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:focus, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:requester, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:input, with: &Fhir.TaskInput.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_intent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:executionPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:performer, with: &Fhir.TaskPerformer.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:insurance, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_lastModified, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:businessStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:requestedPerformer, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_doNotPerform, with: &Fhir.Element.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:statusReason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:restriction, with: &Fhir.TaskRestriction.changeset/2)
    |> cast_embed(:owner, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:output, with: &Fhir.TaskOutput.changeset/2)
    |> validate_format(:instantiatesUri, ~r/^\S*$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:intent, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:doNotPerform, [true, false])
    |> validate_format(:instantiatesCanonical, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :authoredOn,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:priority, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :lastModified,
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
