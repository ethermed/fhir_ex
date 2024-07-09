defmodule Fhir.CodeSystem do
  @moduledoc """
  The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement and its key properties, and optionally define a part or all of its content.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:versionAlgorithmString, :string)
    field(:name, :string)
    field(:date, :string)
    field(:experimental, :boolean)
    field(:copyright, :string)
    field(:description, :string)
    field(:supplements, :string)
    field(:count, :float)
    field(:purpose, :string)
    field(:compositional, :boolean)
    field(:valueSet, :string)
    field(:version, :string)
    field(:lastReviewDate, :string)
    field(:language, :string)
    field(:caseSensitive, :boolean)
    field(:approvalDate, :string)
    field(:resourceType, :string, default: "CodeSystem")
    field(:copyrightLabel, :string)
    field(:url, :string)
    field(:implicitRules, :string)
    field(:content, :string)
    field(:status, :string)
    field(:id, :string)
    field(:versionNeeded, :boolean)
    field(:hierarchyMeaning, :string)
    field(:title, :string)
    field(:publisher, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_lastReviewDate, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:versionAlgorithmCoding, Fhir.Coding)
    embeds_one(:_url, Fhir.Element)
    embeds_many(:endorser, Fhir.ContactDetail)
    embeds_many(:concept, Fhir.CodeSystemConcept)
    embeds_one(:_purpose, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_versionNeeded, Fhir.Element)
    embeds_one(:_copyrightLabel, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:effectivePeriod, Fhir.Period)
    embeds_one(:_experimental, Fhir.Element)
    embeds_one(:_hierarchyMeaning, Fhir.Element)
    embeds_one(:_approvalDate, Fhir.Element)
    embeds_many(:topic, Fhir.CodeableConcept)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:editor, Fhir.ContactDetail)
    embeds_many(:reviewer, Fhir.ContactDetail)
    embeds_one(:_compositional, Fhir.Element)
    embeds_many(:relatedArtifact, Fhir.RelatedArtifact)
    embeds_many(:filter, Fhir.CodeSystemFilter)
    embeds_many(:contact, Fhir.ContactDetail)
    embeds_one(:_publisher, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_content, Fhir.Element)
    embeds_many(:author, Fhir.ContactDetail)
    embeds_many(:useContext, Fhir.UsageContext)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_copyright, Fhir.Element)
    embeds_many(:property, Fhir.CodeSystemProperty)
    embeds_one(:_caseSensitive, Fhir.Element)
    embeds_one(:_versionAlgorithmString, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:jurisdiction, Fhir.CodeableConcept)
    embeds_one(:_count, Fhir.Element)
  end

  @type t :: %__MODULE__{
          versionAlgorithmString: String.t(),
          name: String.t(),
          date: String.t(),
          experimental: boolean(),
          copyright: String.t(),
          description: String.t(),
          supplements: String.t(),
          count: float(),
          purpose: String.t(),
          compositional: boolean(),
          valueSet: String.t(),
          version: String.t(),
          lastReviewDate: String.t(),
          language: String.t(),
          caseSensitive: boolean(),
          approvalDate: String.t(),
          resourceType: String.t(),
          copyrightLabel: String.t(),
          url: String.t(),
          implicitRules: String.t(),
          content: String.t(),
          status: String.t(),
          id: String.t(),
          versionNeeded: boolean(),
          hierarchyMeaning: String.t(),
          title: String.t(),
          publisher: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          _lastReviewDate: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          versionAlgorithmCoding: Fhir.Coding.t(),
          _url: Fhir.Element.t(),
          endorser: [Fhir.ContactDetail.t()],
          concept: [Fhir.CodeSystemConcept.t()],
          _purpose: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _versionNeeded: Fhir.Element.t(),
          _copyrightLabel: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          effectivePeriod: Fhir.Period.t(),
          _experimental: Fhir.Element.t(),
          _hierarchyMeaning: Fhir.Element.t(),
          _approvalDate: Fhir.Element.t(),
          topic: [Fhir.CodeableConcept.t()],
          _description: Fhir.Element.t(),
          editor: [Fhir.ContactDetail.t()],
          reviewer: [Fhir.ContactDetail.t()],
          _compositional: Fhir.Element.t(),
          relatedArtifact: [Fhir.RelatedArtifact.t()],
          filter: [Fhir.CodeSystemFilter.t()],
          contact: [Fhir.ContactDetail.t()],
          _publisher: Fhir.Element.t(),
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          _content: Fhir.Element.t(),
          author: [Fhir.ContactDetail.t()],
          useContext: [Fhir.UsageContext.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          _copyright: Fhir.Element.t(),
          property: [Fhir.CodeSystemProperty.t()],
          _caseSensitive: Fhir.Element.t(),
          _versionAlgorithmString: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          jurisdiction: [Fhir.CodeableConcept.t()],
          _count: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :versionAlgorithmString,
      :name,
      :date,
      :experimental,
      :copyright,
      :description,
      :supplements,
      :count,
      :purpose,
      :compositional,
      :valueSet,
      :version,
      :lastReviewDate,
      :language,
      :caseSensitive,
      :approvalDate,
      :resourceType,
      :copyrightLabel,
      :url,
      :implicitRules,
      :content,
      :status,
      :id,
      :versionNeeded,
      :hierarchyMeaning,
      :title,
      :publisher
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_lastReviewDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:versionAlgorithmCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:endorser, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:concept, with: &Fhir.CodeSystemConcept.changeset/2)
    |> cast_embed(:_purpose, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_versionNeeded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_copyrightLabel, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:effectivePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_experimental, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_hierarchyMeaning, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_approvalDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:topic, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:editor, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:reviewer, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:_compositional, with: &Fhir.Element.changeset/2)
    |> cast_embed(:relatedArtifact, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:filter, with: &Fhir.CodeSystemFilter.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:_publisher, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_content, with: &Fhir.Element.changeset/2)
    |> cast_embed(:author, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:useContext, with: &Fhir.UsageContext.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:property, with: &Fhir.CodeSystemProperty.changeset/2)
    |> cast_embed(:_caseSensitive, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_versionAlgorithmString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:jurisdiction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_count, with: &Fhir.Element.changeset/2)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:experimental, [true, false])
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:supplements, ~r/^\S*$/)
    |> validate_format(:count, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:purpose, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:compositional, [true, false])
    |> validate_format(:valueSet, ~r/^\S*$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :lastReviewDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:caseSensitive, [true, false])
    |> validate_format(
      :approvalDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:copyrightLabel, ~r/^^[\s\S]+$$/)
    |> validate_format(:url, ~r/^\S*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:content, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_inclusion(:versionNeeded, [true, false])
    |> validate_format(:hierarchyMeaning, ~r/^[^\s]+( [^\s]+)*$/)
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
