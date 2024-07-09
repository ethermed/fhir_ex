defmodule Fhir.ArtifactAssessment do
  @moduledoc """
  This Resource provides one or more comments, classifiers or ratings about a Resource and supports attribution and rights management metadata for the added content.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:copyright, :string)
    field(:artifactCanonical, :string)
    field(:artifactUri, :string)
    field(:lastReviewDate, :string)
    field(:language, :string)
    field(:citeAsMarkdown, :string)
    field(:approvalDate, :string)
    field(:resourceType, :string, default: "ArtifactAssessment")
    field(:implicitRules, :string)
    field(:disposition, :string)
    field(:id, :string)
    field(:workflowStatus, :string)
    field(:title, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_lastReviewDate, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:artifactReference, Fhir.Reference)
    embeds_one(:_disposition, Fhir.Element)
    embeds_one(:_approvalDate, Fhir.Element)
    embeds_one(:_artifactCanonical, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:citeAsReference, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_copyright, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_citeAsMarkdown, Fhir.Element)
    embeds_many(:content, Fhir.ArtifactAssessmentContent)
    embeds_one(:_artifactUri, Fhir.Element)
    embeds_one(:_workflowStatus, Fhir.Element)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          copyright: String.t(),
          artifactCanonical: String.t(),
          artifactUri: String.t(),
          lastReviewDate: String.t(),
          language: String.t(),
          citeAsMarkdown: String.t(),
          approvalDate: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          disposition: String.t(),
          id: String.t(),
          workflowStatus: String.t(),
          title: String.t(),
          _date: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          _lastReviewDate: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          artifactReference: Fhir.Reference.t(),
          _disposition: Fhir.Element.t(),
          _approvalDate: Fhir.Element.t(),
          _artifactCanonical: Fhir.Element.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          citeAsReference: Fhir.Reference.t(),
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          _copyright: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _citeAsMarkdown: Fhir.Element.t(),
          content: [Fhir.ArtifactAssessmentContent.t()],
          _artifactUri: Fhir.Element.t(),
          _workflowStatus: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :date,
      :copyright,
      :artifactCanonical,
      :artifactUri,
      :lastReviewDate,
      :language,
      :citeAsMarkdown,
      :approvalDate,
      :resourceType,
      :implicitRules,
      :disposition,
      :id,
      :workflowStatus,
      :title
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_lastReviewDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:artifactReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_disposition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_approvalDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_artifactCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:citeAsReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_citeAsMarkdown, with: &Fhir.Element.changeset/2)
    |> cast_embed(:content, with: &Fhir.ArtifactAssessmentContent.changeset/2)
    |> cast_embed(:_artifactUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_workflowStatus, with: &Fhir.Element.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :lastReviewDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :approvalDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:disposition, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:workflowStatus, ~r/^[^\s]+( [^\s]+)*$/)
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
