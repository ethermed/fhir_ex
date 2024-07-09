defmodule Fhir.Condition do
  @moduledoc """
  A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:onsetString, :string)
    field(:abatementDateTime, :string)
    field(:recordedDate, :string)
    field(:abatementString, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Condition")
    field(:implicitRules, :string)
    field(:onsetDateTime, :string)
    field(:id, :string)
    embeds_many(:stage, Fhir.ConditionStage)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:participant, Fhir.ConditionParticipant)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:onsetAge, Fhir.Age)
    embeds_one(:_abatementString, Fhir.Element)
    embeds_one(:onsetRange, Fhir.Range)
    embeds_one(:_onsetDateTime, Fhir.Element)
    embeds_one(:onsetPeriod, Fhir.Period)
    embeds_one(:_onsetString, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:severity, Fhir.CodeableConcept)
    embeds_one(:_abatementDateTime, Fhir.Element)
    embeds_one(:abatementRange, Fhir.Range)
    embeds_one(:abatementAge, Fhir.Age)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:clinicalStatus, Fhir.CodeableConcept)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:bodySite, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_recordedDate, Fhir.Element)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:abatementPeriod, Fhir.Period)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:evidence, Fhir.CodeableReference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:verificationStatus, Fhir.CodeableConcept)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          onsetString: String.t(),
          abatementDateTime: String.t(),
          recordedDate: String.t(),
          abatementString: String.t(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          onsetDateTime: String.t(),
          id: String.t(),
          stage: [Fhir.ConditionStage.t()],
          extension: [Fhir.Extension.t()],
          participant: [Fhir.ConditionParticipant.t()],
          contained: [Fhir.ResourceList.t()],
          onsetAge: Fhir.Age.t(),
          _abatementString: Fhir.Element.t(),
          onsetRange: Fhir.Range.t(),
          _onsetDateTime: Fhir.Element.t(),
          onsetPeriod: Fhir.Period.t(),
          _onsetString: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          severity: Fhir.CodeableConcept.t(),
          _abatementDateTime: Fhir.Element.t(),
          abatementRange: Fhir.Range.t(),
          abatementAge: Fhir.Age.t(),
          encounter: Fhir.Reference.t(),
          clinicalStatus: Fhir.CodeableConcept.t(),
          code: Fhir.CodeableConcept.t(),
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          bodySite: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          _recordedDate: Fhir.Element.t(),
          meta: Fhir.Meta.t(),
          abatementPeriod: Fhir.Period.t(),
          identifier: [Fhir.Identifier.t()],
          evidence: [Fhir.CodeableReference.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          verificationStatus: Fhir.CodeableConcept.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :onsetString,
      :abatementDateTime,
      :recordedDate,
      :abatementString,
      :language,
      :resourceType,
      :implicitRules,
      :onsetDateTime,
      :id
    ])
    |> cast_embed(:stage, with: &Fhir.ConditionStage.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:participant, with: &Fhir.ConditionParticipant.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:onsetAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:_abatementString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:onsetRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:_onsetDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:onsetPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_onsetString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:severity, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_abatementDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:abatementRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:abatementAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:clinicalStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_recordedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:abatementPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:evidence, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:verificationStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :recordedDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
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
