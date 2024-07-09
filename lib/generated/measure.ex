defmodule Fhir.Measure do
  @moduledoc """
  The Measure resource provides the definition of a quality measure.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:rationale, :string)
    field(:versionAlgorithmString, :string)
    field(:name, :string)
    field(:date, :string)
    field(:experimental, :boolean)
    field(:copyright, :string)
    field(:description, :string)
    field(:rateAggregation, :string)
    field(:disclaimer, :string)
    field(:usage, :string)
    field(:basis, :string)
    field(:purpose, :string)
    field(:clinicalRecommendationStatement, :string)
    field(:version, :string)
    field(:lastReviewDate, :string)
    field(:language, :string)
    field(:riskAdjustment, :string)
    field(:guidance, :string)
    field(:library, :string)
    field(:approvalDate, :string)
    field(:resourceType, :string, default: "Measure")
    field(:copyrightLabel, :string)
    field(:url, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:subtitle, :string)
    field(:id, :string)
    field(:title, :string)
    field(:publisher, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_guidance, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_lastReviewDate, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:supplementalData, Fhir.MeasureSupplementalData)
    embeds_one(:_disclaimer, Fhir.Element)
    embeds_one(:_rateAggregation, Fhir.Element)
    embeds_one(:versionAlgorithmCoding, Fhir.Coding)
    embeds_one(:_url, Fhir.Element)
    embeds_many(:endorser, Fhir.ContactDetail)
    embeds_one(:_purpose, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_riskAdjustment, Fhir.Element)
    embeds_one(:_copyrightLabel, Fhir.Element)
    embeds_one(:scoringUnit, Fhir.CodeableConcept)
    embeds_one(:subjectCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:_basis, Fhir.Element)
    embeds_one(:_rationale, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:effectivePeriod, Fhir.Period)
    embeds_one(:_experimental, Fhir.Element)
    embeds_one(:_approvalDate, Fhir.Element)
    embeds_many(:topic, Fhir.CodeableConcept)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_usage, Fhir.Element)
    embeds_many(:editor, Fhir.ContactDetail)
    embeds_many(:reviewer, Fhir.ContactDetail)
    embeds_one(:_clinicalRecommendationStatement, Fhir.Element)
    embeds_many(:relatedArtifact, Fhir.RelatedArtifact)
    embeds_many(:contact, Fhir.ContactDetail)
    embeds_one(:_publisher, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:author, Fhir.ContactDetail)
    embeds_many(:useContext, Fhir.UsageContext)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_subtitle, Fhir.Element)
    embeds_one(:_copyright, Fhir.Element)
    embeds_one(:scoring, Fhir.CodeableConcept)
    embeds_many(:group, Fhir.MeasureGroup)
    embeds_many(:type, Fhir.CodeableConcept)
    embeds_one(:_versionAlgorithmString, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:subjectReference, Fhir.Reference)
    embeds_one(:compositeScoring, Fhir.CodeableConcept)
    embeds_many(:jurisdiction, Fhir.CodeableConcept)
    embeds_one(:improvementNotation, Fhir.CodeableConcept)
    embeds_many(:term, Fhir.MeasureTerm)
  end

  @type t :: %__MODULE__{
          rationale: String.t(),
          versionAlgorithmString: String.t(),
          name: String.t(),
          date: String.t(),
          experimental: boolean(),
          copyright: String.t(),
          description: String.t(),
          rateAggregation: String.t(),
          disclaimer: String.t(),
          usage: String.t(),
          basis: String.t(),
          purpose: String.t(),
          clinicalRecommendationStatement: String.t(),
          version: String.t(),
          lastReviewDate: String.t(),
          language: String.t(),
          riskAdjustment: String.t(),
          guidance: String.t(),
          library: String.t(),
          approvalDate: String.t(),
          resourceType: String.t(),
          copyrightLabel: String.t(),
          url: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          subtitle: String.t(),
          id: String.t(),
          title: String.t(),
          publisher: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          _guidance: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          _lastReviewDate: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          supplementalData: [Fhir.MeasureSupplementalData.t()],
          _disclaimer: Fhir.Element.t(),
          _rateAggregation: Fhir.Element.t(),
          versionAlgorithmCoding: Fhir.Coding.t(),
          _url: Fhir.Element.t(),
          endorser: [Fhir.ContactDetail.t()],
          _purpose: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _riskAdjustment: Fhir.Element.t(),
          _copyrightLabel: Fhir.Element.t(),
          scoringUnit: Fhir.CodeableConcept.t(),
          subjectCodeableConcept: Fhir.CodeableConcept.t(),
          _basis: Fhir.Element.t(),
          _rationale: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          effectivePeriod: Fhir.Period.t(),
          _experimental: Fhir.Element.t(),
          _approvalDate: Fhir.Element.t(),
          topic: [Fhir.CodeableConcept.t()],
          _description: Fhir.Element.t(),
          _usage: Fhir.Element.t(),
          editor: [Fhir.ContactDetail.t()],
          reviewer: [Fhir.ContactDetail.t()],
          _clinicalRecommendationStatement: Fhir.Element.t(),
          relatedArtifact: [Fhir.RelatedArtifact.t()],
          contact: [Fhir.ContactDetail.t()],
          _publisher: Fhir.Element.t(),
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          author: [Fhir.ContactDetail.t()],
          useContext: [Fhir.UsageContext.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          _subtitle: Fhir.Element.t(),
          _copyright: Fhir.Element.t(),
          scoring: Fhir.CodeableConcept.t(),
          group: [Fhir.MeasureGroup.t()],
          type: [Fhir.CodeableConcept.t()],
          _versionAlgorithmString: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          subjectReference: Fhir.Reference.t(),
          compositeScoring: Fhir.CodeableConcept.t(),
          jurisdiction: [Fhir.CodeableConcept.t()],
          improvementNotation: Fhir.CodeableConcept.t(),
          term: [Fhir.MeasureTerm.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :rationale,
      :versionAlgorithmString,
      :name,
      :date,
      :experimental,
      :copyright,
      :description,
      :rateAggregation,
      :disclaimer,
      :usage,
      :basis,
      :purpose,
      :clinicalRecommendationStatement,
      :version,
      :lastReviewDate,
      :language,
      :riskAdjustment,
      :guidance,
      :library,
      :approvalDate,
      :resourceType,
      :copyrightLabel,
      :url,
      :implicitRules,
      :status,
      :subtitle,
      :id,
      :title,
      :publisher
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_guidance, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_lastReviewDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:supplementalData, with: &Fhir.MeasureSupplementalData.changeset/2)
    |> cast_embed(:_disclaimer, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_rateAggregation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:versionAlgorithmCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:endorser, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:_purpose, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_riskAdjustment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_copyrightLabel, with: &Fhir.Element.changeset/2)
    |> cast_embed(:scoringUnit, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subjectCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_basis, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_rationale, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:effectivePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_experimental, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_approvalDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:topic, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_usage, with: &Fhir.Element.changeset/2)
    |> cast_embed(:editor, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:reviewer, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:_clinicalRecommendationStatement, with: &Fhir.Element.changeset/2)
    |> cast_embed(:relatedArtifact, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:_publisher, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:author, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:useContext, with: &Fhir.UsageContext.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_subtitle, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:scoring, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:group, with: &Fhir.MeasureGroup.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_versionAlgorithmString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:subjectReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:compositeScoring, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:jurisdiction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:improvementNotation, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:term, with: &Fhir.MeasureTerm.changeset/2)
    |> validate_format(:rationale, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:experimental, [true, false])
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:rateAggregation, ~r/^^[\s\S]+$$/)
    |> validate_format(:disclaimer, ~r/^^[\s\S]+$$/)
    |> validate_format(:usage, ~r/^^[\s\S]+$$/)
    |> validate_format(:basis, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:purpose, ~r/^^[\s\S]+$$/)
    |> validate_format(:clinicalRecommendationStatement, ~r/^^[\s\S]+$$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :lastReviewDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:riskAdjustment, ~r/^^[\s\S]+$$/)
    |> validate_format(:guidance, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :approvalDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:copyrightLabel, ~r/^^[\s\S]+$$/)
    |> validate_format(:url, ~r/^\S*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:subtitle, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
    |> validate_format(:publisher, ~r/^^[\s\S]+$$/)
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
