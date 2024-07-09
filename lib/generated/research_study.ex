defmodule Fhir.ResearchStudy do
  @moduledoc """
  A scientific study of nature that sometimes includes processes involved in health and disease. For example, clinical trials are research studies that involve people. These studies may be related to new ways to screen, prevent, diagnose, and treat disease. They may also study certain outcomes and certain groups of people by looking at data collected in the past or future.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:name, :string)
    field(:date, :string)
    field(:description, :string)
    field(:descriptionSummary, :string)
    field(:version, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "ResearchStudy")
    field(:url, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    field(:title, :string)
    embeds_one(:primaryPurposeType, Fhir.CodeableConcept)
    embeds_one(:_date, Fhir.Element)
    embeds_many(:outcomeMeasure, Fhir.ResearchStudyOutcomeMeasure)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:recruitment, Fhir.ResearchStudyRecruitment)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:phase, Fhir.CodeableConcept)
    embeds_one(:_descriptionSummary, Fhir.Element)
    embeds_one(:_url, Fhir.Element)
    embeds_many(:protocol, Fhir.Reference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:keyword, Fhir.CodeableConcept)
    embeds_many(:associatedParty, Fhir.ResearchStudyAssociatedParty)
    embeds_many(:focus, Fhir.CodeableReference)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:region, Fhir.CodeableConcept)
    embeds_many(:progressStatus, Fhir.ResearchStudyProgressStatus)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:studyDesign, Fhir.CodeableConcept)
    embeds_many(:result, Fhir.Reference)
    embeds_many(:site, Fhir.Reference)
    embeds_many(:condition, Fhir.CodeableConcept)
    embeds_many(:classifier, Fhir.CodeableConcept)
    embeds_one(:whyStopped, Fhir.CodeableConcept)
    embeds_many(:relatedArtifact, Fhir.RelatedArtifact)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:comparisonGroup, Fhir.ResearchStudyComparisonGroup)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:partOf, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:period, Fhir.Period)
    embeds_many(:objective, Fhir.ResearchStudyObjective)
    embeds_many(:note, Fhir.Annotation)
    embeds_many(:label, Fhir.ResearchStudyLabel)
  end

  @type t :: %__MODULE__{
          name: String.t(),
          date: String.t(),
          description: String.t(),
          descriptionSummary: String.t(),
          version: String.t(),
          language: String.t(),
          resourceType: String.t(),
          url: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          title: String.t(),
          primaryPurposeType: Fhir.CodeableConcept.t(),
          _date: Fhir.Element.t(),
          outcomeMeasure: [Fhir.ResearchStudyOutcomeMeasure.t()],
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          recruitment: Fhir.ResearchStudyRecruitment.t(),
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          phase: Fhir.CodeableConcept.t(),
          _descriptionSummary: Fhir.Element.t(),
          _url: Fhir.Element.t(),
          protocol: [Fhir.Reference.t()],
          _implicitRules: Fhir.Element.t(),
          keyword: [Fhir.CodeableConcept.t()],
          associatedParty: [Fhir.ResearchStudyAssociatedParty.t()],
          focus: [Fhir.CodeableReference.t()],
          _name: Fhir.Element.t(),
          region: [Fhir.CodeableConcept.t()],
          progressStatus: [Fhir.ResearchStudyProgressStatus.t()],
          _description: Fhir.Element.t(),
          studyDesign: [Fhir.CodeableConcept.t()],
          result: [Fhir.Reference.t()],
          site: [Fhir.Reference.t()],
          condition: [Fhir.CodeableConcept.t()],
          classifier: [Fhir.CodeableConcept.t()],
          whyStopped: Fhir.CodeableConcept.t(),
          relatedArtifact: [Fhir.RelatedArtifact.t()],
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          comparisonGroup: [Fhir.ResearchStudyComparisonGroup.t()],
          identifier: [Fhir.Identifier.t()],
          partOf: [Fhir.Reference.t()],
          _language: Fhir.Element.t(),
          period: Fhir.Period.t(),
          objective: [Fhir.ResearchStudyObjective.t()],
          note: [Fhir.Annotation.t()],
          label: [Fhir.ResearchStudyLabel.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :name,
      :date,
      :description,
      :descriptionSummary,
      :version,
      :language,
      :resourceType,
      :url,
      :implicitRules,
      :status,
      :id,
      :title
    ])
    |> cast_embed(:primaryPurposeType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:outcomeMeasure, with: &Fhir.ResearchStudyOutcomeMeasure.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:recruitment, with: &Fhir.ResearchStudyRecruitment.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:phase, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_descriptionSummary, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:protocol, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:keyword, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:associatedParty, with: &Fhir.ResearchStudyAssociatedParty.changeset/2)
    |> cast_embed(:focus, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:region, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:progressStatus, with: &Fhir.ResearchStudyProgressStatus.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:studyDesign, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:result, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:site, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:condition, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:classifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:whyStopped, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:relatedArtifact, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:comparisonGroup, with: &Fhir.ResearchStudyComparisonGroup.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:objective, with: &Fhir.ResearchStudyObjective.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:label, with: &Fhir.ResearchStudyLabel.changeset/2)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:descriptionSummary, ~r/^^[\s\S]+$$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:url, ~r/^\S*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
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
