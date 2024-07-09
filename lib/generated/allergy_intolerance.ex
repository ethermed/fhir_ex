defmodule Fhir.AllergyIntolerance do
  @moduledoc """
  Risk of harmful or undesirable physiological response which is specific to an individual and associated with exposure to a substance.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:onsetString, :string)
    field(:recordedDate, :string)
    field(:criticality, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "AllergyIntolerance")
    field(:category, :string)
    field(:implicitRules, :string)
    field(:lastOccurrence, :string)
    field(:onsetDateTime, :string)
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:participant, Fhir.AllergyIntoleranceParticipant)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:onsetAge, Fhir.Age)
    embeds_one(:onsetRange, Fhir.Range)
    embeds_one(:_onsetDateTime, Fhir.Element)
    embeds_one(:onsetPeriod, Fhir.Period)
    embeds_one(:_onsetString, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_lastOccurrence, Fhir.Element)
    embeds_many(:reaction, Fhir.AllergyIntoleranceReaction)
    embeds_one(:_criticality, Fhir.Element)
    embeds_many(:_category, Fhir.Element)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:clinicalStatus, Fhir.CodeableConcept)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_recordedDate, Fhir.Element)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:verificationStatus, Fhir.CodeableConcept)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          onsetString: String.t(),
          recordedDate: String.t(),
          criticality: String.t(),
          language: String.t(),
          resourceType: String.t(),
          category: String.t(),
          implicitRules: String.t(),
          lastOccurrence: String.t(),
          onsetDateTime: String.t(),
          id: String.t(),
          extension: [Fhir.Extension.t()],
          participant: [Fhir.AllergyIntoleranceParticipant.t()],
          contained: [Fhir.ResourceList.t()],
          onsetAge: Fhir.Age.t(),
          onsetRange: Fhir.Range.t(),
          _onsetDateTime: Fhir.Element.t(),
          onsetPeriod: Fhir.Period.t(),
          _onsetString: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _lastOccurrence: Fhir.Element.t(),
          reaction: [Fhir.AllergyIntoleranceReaction.t()],
          _criticality: Fhir.Element.t(),
          _category: [Fhir.Element.t()],
          encounter: Fhir.Reference.t(),
          clinicalStatus: Fhir.CodeableConcept.t(),
          code: Fhir.CodeableConcept.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          _recordedDate: Fhir.Element.t(),
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          type: Fhir.CodeableConcept.t(),
          patient: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          verificationStatus: Fhir.CodeableConcept.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :onsetString,
      :recordedDate,
      :criticality,
      :language,
      :resourceType,
      :category,
      :implicitRules,
      :lastOccurrence,
      :onsetDateTime,
      :id
    ])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:participant, with: &Fhir.AllergyIntoleranceParticipant.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:onsetAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:onsetRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:_onsetDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:onsetPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_onsetString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lastOccurrence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:reaction, with: &Fhir.AllergyIntoleranceReaction.changeset/2)
    |> cast_embed(:_criticality, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_category, with: &Fhir.Element.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:clinicalStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_recordedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:verificationStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :recordedDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:criticality, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(
      :lastOccurrence,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
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
