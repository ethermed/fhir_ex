defmodule Fhir.FamilyMemberHistory do
  @moduledoc """
  Significant health conditions for a person related to the patient relevant in the context of care for the patient.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:name, :string)
    field(:instantiatesUri, :string)
    field(:date, :string)
    field(:estimatedAge, :boolean)
    field(:deceasedString, :string)
    field(:instantiatesCanonical, :string)
    field(:language, :string)
    field(:ageString, :string)
    field(:bornDate, :string)
    field(:resourceType, :string, default: "FamilyMemberHistory")
    field(:bornString, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    field(:deceasedBoolean, :boolean)
    field(:deceasedDate, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:participant, Fhir.FamilyMemberHistoryParticipant)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:deceasedRange, Fhir.Range)
    embeds_one(:relationship, Fhir.CodeableConcept)
    embeds_one(:_estimatedAge, Fhir.Element)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_bornString, Fhir.Element)
    embeds_one(:sex, Fhir.CodeableConcept)
    embeds_one(:deceasedAge, Fhir.Age)
    embeds_many(:_instantiatesUri, Fhir.Element)
    embeds_many(:condition, Fhir.FamilyMemberHistoryCondition)
    embeds_one(:dataAbsentReason, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:ageAge, Fhir.Age)
    embeds_one(:ageRange, Fhir.Range)
    embeds_many(:procedure, Fhir.FamilyMemberHistoryProcedure)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_deceasedDate, Fhir.Element)
    embeds_one(:bornPeriod, Fhir.Period)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_deceasedBoolean, Fhir.Element)
    embeds_one(:_deceasedString, Fhir.Element)
    embeds_one(:_ageString, Fhir.Element)
    embeds_one(:_bornDate, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          name: String.t(),
          instantiatesUri: String.t(),
          date: String.t(),
          estimatedAge: boolean(),
          deceasedString: String.t(),
          instantiatesCanonical: String.t(),
          language: String.t(),
          ageString: String.t(),
          bornDate: String.t(),
          resourceType: String.t(),
          bornString: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          deceasedBoolean: boolean(),
          deceasedDate: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          participant: [Fhir.FamilyMemberHistoryParticipant.t()],
          contained: [Fhir.ResourceList.t()],
          deceasedRange: Fhir.Range.t(),
          relationship: Fhir.CodeableConcept.t(),
          _estimatedAge: Fhir.Element.t(),
          reason: [Fhir.CodeableReference.t()],
          _implicitRules: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _bornString: Fhir.Element.t(),
          sex: Fhir.CodeableConcept.t(),
          deceasedAge: Fhir.Age.t(),
          _instantiatesUri: [Fhir.Element.t()],
          condition: [Fhir.FamilyMemberHistoryCondition.t()],
          dataAbsentReason: Fhir.CodeableConcept.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          ageAge: Fhir.Age.t(),
          ageRange: Fhir.Range.t(),
          procedure: [Fhir.FamilyMemberHistoryProcedure.t()],
          identifier: [Fhir.Identifier.t()],
          _deceasedDate: Fhir.Element.t(),
          bornPeriod: Fhir.Period.t(),
          patient: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          _deceasedBoolean: Fhir.Element.t(),
          _deceasedString: Fhir.Element.t(),
          _ageString: Fhir.Element.t(),
          _bornDate: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :name,
      :instantiatesUri,
      :date,
      :estimatedAge,
      :deceasedString,
      :instantiatesCanonical,
      :language,
      :ageString,
      :bornDate,
      :resourceType,
      :bornString,
      :implicitRules,
      :status,
      :id,
      :deceasedBoolean,
      :deceasedDate
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:participant, with: &Fhir.FamilyMemberHistoryParticipant.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:deceasedRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:relationship, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_estimatedAge, with: &Fhir.Element.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_bornString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:sex, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:deceasedAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:condition, with: &Fhir.FamilyMemberHistoryCondition.changeset/2)
    |> cast_embed(:dataAbsentReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:ageAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:ageRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:procedure, with: &Fhir.FamilyMemberHistoryProcedure.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_deceasedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:bornPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_deceasedBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_deceasedString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_ageString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_bornDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:estimatedAge, [true, false])
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
