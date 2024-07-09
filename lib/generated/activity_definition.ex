defmodule Fhir.ActivityDefinition do
  @moduledoc """
  This resource allows for the definition of some activity to be performed, independent of a particular patient, practitioner, or other performance context.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:profile, :string)
    field(:versionAlgorithmString, :string)
    field(:asNeededBoolean, :boolean)
    field(:name, :string)
    field(:date, :string)
    field(:experimental, :boolean)
    field(:copyright, :string)
    field(:kind, :string)
    field(:description, :string)
    field(:observationResultRequirement, :string)
    field(:specimenRequirement, :string)
    field(:usage, :string)
    field(:intent, :string)
    field(:purpose, :string)
    field(:doNotPerform, :boolean)
    field(:subjectCanonical, :string)
    field(:version, :string)
    field(:lastReviewDate, :string)
    field(:language, :string)
    field(:transform, :string)
    field(:priority, :string)
    field(:library, :string)
    field(:approvalDate, :string)
    field(:resourceType, :string, default: "ActivityDefinition")
    field(:copyrightLabel, :string)
    field(:url, :string)
    field(:observationRequirement, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:subtitle, :string)
    field(:id, :string)
    field(:title, :string)
    field(:publisher, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:dosage, Fhir.Dosage)
    embeds_one(:timingAge, Fhir.Age)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_lastReviewDate, Fhir.Element)
    embeds_many(:participant, Fhir.ActivityDefinitionParticipant)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:versionAlgorithmCoding, Fhir.Coding)
    embeds_one(:_url, Fhir.Element)
    embeds_many(:endorser, Fhir.ContactDetail)
    embeds_one(:timingDuration, Fhir.Duration)
    embeds_one(:_purpose, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_copyrightLabel, Fhir.Element)
    embeds_one(:productReference, Fhir.Reference)
    embeds_one(:subjectCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:effectivePeriod, Fhir.Period)
    embeds_one(:timingTiming, Fhir.Timing)
    embeds_one(:_priority, Fhir.Element)
    embeds_one(:_experimental, Fhir.Element)
    embeds_one(:_approvalDate, Fhir.Element)
    embeds_one(:_kind, Fhir.Element)
    embeds_one(:_intent, Fhir.Element)
    embeds_many(:topic, Fhir.CodeableConcept)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_usage, Fhir.Element)
    embeds_many(:editor, Fhir.ContactDetail)
    embeds_many(:reviewer, Fhir.ContactDetail)
    embeds_one(:location, Fhir.CodeableReference)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:relatedArtifact, Fhir.RelatedArtifact)
    embeds_many(:contact, Fhir.ContactDetail)
    embeds_one(:_publisher, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:bodySite, Fhir.CodeableConcept)
    embeds_one(:_subjectCanonical, Fhir.Element)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:productCodeableConcept, Fhir.CodeableConcept)
    embeds_many(:author, Fhir.ContactDetail)
    embeds_many(:useContext, Fhir.UsageContext)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:dynamicValue, Fhir.ActivityDefinitionDynamicValue)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_subtitle, Fhir.Element)
    embeds_one(:_copyright, Fhir.Element)
    embeds_one(:_doNotPerform, Fhir.Element)
    embeds_one(:_versionAlgorithmString, Fhir.Element)
    embeds_one(:_asNeededBoolean, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:subjectReference, Fhir.Reference)
    embeds_one(:asNeededCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_many(:jurisdiction, Fhir.CodeableConcept)
    embeds_one(:timingRange, Fhir.Range)
  end

  @type t :: %__MODULE__{
          profile: String.t(),
          versionAlgorithmString: String.t(),
          asNeededBoolean: boolean(),
          name: String.t(),
          date: String.t(),
          experimental: boolean(),
          copyright: String.t(),
          kind: String.t(),
          description: String.t(),
          observationResultRequirement: String.t(),
          specimenRequirement: String.t(),
          usage: String.t(),
          intent: String.t(),
          purpose: String.t(),
          doNotPerform: boolean(),
          subjectCanonical: String.t(),
          version: String.t(),
          lastReviewDate: String.t(),
          language: String.t(),
          transform: String.t(),
          priority: String.t(),
          library: String.t(),
          approvalDate: String.t(),
          resourceType: String.t(),
          copyrightLabel: String.t(),
          url: String.t(),
          observationRequirement: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          subtitle: String.t(),
          id: String.t(),
          title: String.t(),
          publisher: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          dosage: [Fhir.Dosage.t()],
          timingAge: Fhir.Age.t(),
          extension: [Fhir.Extension.t()],
          _lastReviewDate: Fhir.Element.t(),
          participant: [Fhir.ActivityDefinitionParticipant.t()],
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          versionAlgorithmCoding: Fhir.Coding.t(),
          _url: Fhir.Element.t(),
          endorser: [Fhir.ContactDetail.t()],
          timingDuration: Fhir.Duration.t(),
          _purpose: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _copyrightLabel: Fhir.Element.t(),
          productReference: Fhir.Reference.t(),
          subjectCodeableConcept: Fhir.CodeableConcept.t(),
          _name: Fhir.Element.t(),
          effectivePeriod: Fhir.Period.t(),
          timingTiming: Fhir.Timing.t(),
          _priority: Fhir.Element.t(),
          _experimental: Fhir.Element.t(),
          _approvalDate: Fhir.Element.t(),
          _kind: Fhir.Element.t(),
          _intent: Fhir.Element.t(),
          topic: [Fhir.CodeableConcept.t()],
          _description: Fhir.Element.t(),
          _usage: Fhir.Element.t(),
          editor: [Fhir.ContactDetail.t()],
          reviewer: [Fhir.ContactDetail.t()],
          location: Fhir.CodeableReference.t(),
          code: Fhir.CodeableConcept.t(),
          relatedArtifact: [Fhir.RelatedArtifact.t()],
          contact: [Fhir.ContactDetail.t()],
          _publisher: Fhir.Element.t(),
          text: Fhir.Narrative.t(),
          bodySite: [Fhir.CodeableConcept.t()],
          _subjectCanonical: Fhir.Element.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          productCodeableConcept: Fhir.CodeableConcept.t(),
          author: [Fhir.ContactDetail.t()],
          useContext: [Fhir.UsageContext.t()],
          meta: Fhir.Meta.t(),
          dynamicValue: [Fhir.ActivityDefinitionDynamicValue.t()],
          identifier: [Fhir.Identifier.t()],
          _subtitle: Fhir.Element.t(),
          _copyright: Fhir.Element.t(),
          _doNotPerform: Fhir.Element.t(),
          _versionAlgorithmString: Fhir.Element.t(),
          _asNeededBoolean: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          subjectReference: Fhir.Reference.t(),
          asNeededCodeableConcept: Fhir.CodeableConcept.t(),
          quantity: Fhir.Quantity.t(),
          jurisdiction: [Fhir.CodeableConcept.t()],
          timingRange: Fhir.Range.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :profile,
      :versionAlgorithmString,
      :asNeededBoolean,
      :name,
      :date,
      :experimental,
      :copyright,
      :kind,
      :description,
      :observationResultRequirement,
      :specimenRequirement,
      :usage,
      :intent,
      :purpose,
      :doNotPerform,
      :subjectCanonical,
      :version,
      :lastReviewDate,
      :language,
      :transform,
      :priority,
      :library,
      :approvalDate,
      :resourceType,
      :copyrightLabel,
      :url,
      :observationRequirement,
      :implicitRules,
      :status,
      :subtitle,
      :id,
      :title,
      :publisher
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dosage, with: &Fhir.Dosage.changeset/2)
    |> cast_embed(:timingAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_lastReviewDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:participant, with: &Fhir.ActivityDefinitionParticipant.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:versionAlgorithmCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:endorser, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:timingDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:_purpose, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_copyrightLabel, with: &Fhir.Element.changeset/2)
    |> cast_embed(:productReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subjectCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:effectivePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:timingTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_experimental, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_approvalDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_kind, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_intent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:topic, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_usage, with: &Fhir.Element.changeset/2)
    |> cast_embed(:editor, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:reviewer, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:location, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:relatedArtifact, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:_publisher, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_subjectCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:productCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:author, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:useContext, with: &Fhir.UsageContext.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:dynamicValue, with: &Fhir.ActivityDefinitionDynamicValue.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_subtitle, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_doNotPerform, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_versionAlgorithmString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_asNeededBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:subjectReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:asNeededCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:jurisdiction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:timingRange, with: &Fhir.Range.changeset/2)
    |> validate_format(:profile, ~r/^\S*$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:experimental, [true, false])
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(:kind, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:usage, ~r/^^[\s\S]+$$/)
    |> validate_format(:intent, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:purpose, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:doNotPerform, [true, false])
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :lastReviewDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:transform, ~r/^\S*$/)
    |> validate_format(:priority, ~r/^[^\s]+( [^\s]+)*$/)
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
