defmodule Fhir.ClinicalImpression do
  @moduledoc """
  A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource is called "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the recording of assessment tools such as Apgar score.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:protocol, :string)
    field(:description, :string)
    field(:effectiveDateTime, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "ClinicalImpression")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:summary, :string)
    field(:id, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:prognosisReference, Fhir.Reference)
    embeds_one(:changePattern, Fhir.CodeableConcept)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:previous, Fhir.Reference)
    embeds_one(:effectivePeriod, Fhir.Period)
    embeds_one(:_summary, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:finding, Fhir.ClinicalImpressionFinding)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:_protocol, Fhir.Element)
    embeds_one(:performer, Fhir.Reference)
    embeds_many(:supportingInfo, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:problem, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_effectiveDateTime, Fhir.Element)
    embeds_one(:statusReason, Fhir.CodeableConcept)
    embeds_many(:note, Fhir.Annotation)
    embeds_many(:prognosisCodeableConcept, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          protocol: String.t(),
          description: String.t(),
          effectiveDateTime: String.t(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          summary: String.t(),
          id: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          prognosisReference: [Fhir.Reference.t()],
          changePattern: Fhir.CodeableConcept.t(),
          _implicitRules: Fhir.Element.t(),
          previous: Fhir.Reference.t(),
          effectivePeriod: Fhir.Period.t(),
          _summary: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          finding: [Fhir.ClinicalImpressionFinding.t()],
          encounter: Fhir.Reference.t(),
          _protocol: [Fhir.Element.t()],
          performer: Fhir.Reference.t(),
          supportingInfo: [Fhir.Reference.t()],
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          problem: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          _language: Fhir.Element.t(),
          _effectiveDateTime: Fhir.Element.t(),
          statusReason: Fhir.CodeableConcept.t(),
          note: [Fhir.Annotation.t()],
          prognosisCodeableConcept: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :date,
      :protocol,
      :description,
      :effectiveDateTime,
      :language,
      :resourceType,
      :implicitRules,
      :status,
      :summary,
      :id
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:prognosisReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:changePattern, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:previous, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:effectivePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_summary, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:finding, with: &Fhir.ClinicalImpressionFinding.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_protocol, with: &Fhir.Element.changeset/2)
    |> cast_embed(:performer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:supportingInfo, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:problem, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_effectiveDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:statusReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:prognosisCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:summary, ~r/^^[\s\S]+$$/)
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
