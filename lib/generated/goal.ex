defmodule Fhir.Goal do
  @moduledoc """
  Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:statusDate, :string)
    field(:continuous, :boolean)
    field(:language, :string)
    field(:lifecycleStatus, :string)
    field(:resourceType, :string, default: "Goal")
    field(:implicitRules, :string)
    field(:statusReason, :string)
    field(:startDate, :string)
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_statusReason, Fhir.Element)
    embeds_one(:_lifecycleStatus, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:achievementStatus, Fhir.CodeableConcept)
    embeds_one(:description, Fhir.CodeableConcept)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_statusDate, Fhir.Element)
    embeds_many(:target, Fhir.GoalTarget)
    embeds_many(:outcome, Fhir.CodeableReference)
    embeds_one(:startCodeableConcept, Fhir.CodeableConcept)
    embeds_many(:addresses, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:source, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:priority, Fhir.CodeableConcept)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_continuous, Fhir.Element)
    embeds_one(:_startDate, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          statusDate: String.t(),
          continuous: boolean(),
          language: String.t(),
          lifecycleStatus: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          statusReason: String.t(),
          startDate: String.t(),
          id: String.t(),
          extension: [Fhir.Extension.t()],
          _statusReason: Fhir.Element.t(),
          _lifecycleStatus: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          achievementStatus: Fhir.CodeableConcept.t(),
          description: Fhir.CodeableConcept.t(),
          _implicitRules: Fhir.Element.t(),
          _statusDate: Fhir.Element.t(),
          target: [Fhir.GoalTarget.t()],
          outcome: [Fhir.CodeableReference.t()],
          startCodeableConcept: Fhir.CodeableConcept.t(),
          addresses: [Fhir.Reference.t()],
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          source: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          priority: Fhir.CodeableConcept.t(),
          identifier: [Fhir.Identifier.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          _continuous: Fhir.Element.t(),
          _startDate: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :statusDate,
      :continuous,
      :language,
      :lifecycleStatus,
      :resourceType,
      :implicitRules,
      :statusReason,
      :startDate,
      :id
    ])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_statusReason, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lifecycleStatus, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:achievementStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:description, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_statusDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:target, with: &Fhir.GoalTarget.changeset/2)
    |> cast_embed(:outcome, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:startCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:addresses, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:source, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:priority, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_continuous, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_startDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :statusDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_inclusion(:continuous, [true, false])
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:lifecycleStatus, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:statusReason, ~r/^^[\s\S]+$$/)
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
