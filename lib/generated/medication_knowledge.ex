defmodule Fhir.MedicationKnowledge do
  @moduledoc """
  Information about a medication that is used to support knowledge.
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
    field(:purpose, :string)
    field(:version, :string)
    field(:lastReviewDate, :string)
    field(:language, :string)
    field(:preparationInstruction, :string)
    field(:approvalDate, :string)
    field(:resourceType, :string, default: "MedicationKnowledge")
    field(:copyrightLabel, :string)
    field(:url, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    field(:title, :string)
    field(:publisher, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:intendedJurisdiction, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_lastReviewDate, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:storageGuideline, Fhir.MedicationKnowledgeStorageGuideline)
    embeds_many(:clinicalUseIssue, Fhir.Reference)
    embeds_one(:versionAlgorithmCoding, Fhir.Coding)
    embeds_one(:_url, Fhir.Element)
    embeds_many(:endorser, Fhir.ContactDetail)
    embeds_many(:productType, Fhir.CodeableConcept)
    embeds_one(:_purpose, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_copyrightLabel, Fhir.Element)
    embeds_many(:indicationGuideline, Fhir.MedicationKnowledgeIndicationGuideline)
    embeds_many(:regulatory, Fhir.MedicationKnowledgeRegulatory)
    embeds_many(:_name, Fhir.Element)
    embeds_one(:effectivePeriod, Fhir.Period)
    embeds_one(:_experimental, Fhir.Element)
    embeds_many(:monitoringProgram, Fhir.MedicationKnowledgeMonitoringProgram)
    embeds_many(:monograph, Fhir.MedicationKnowledgeMonograph)
    embeds_one(:_approvalDate, Fhir.Element)
    embeds_many(:topic, Fhir.CodeableConcept)
    embeds_one(:_preparationInstruction, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:editor, Fhir.ContactDetail)
    embeds_many(:packaging, Fhir.MedicationKnowledgePackaging)
    embeds_many(:reviewer, Fhir.ContactDetail)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:relatedArtifact, Fhir.RelatedArtifact)
    embeds_many(:contact, Fhir.ContactDetail)
    embeds_one(:_publisher, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:author, Fhir.Reference)
    embeds_many(:relatedMedicationKnowledge, Fhir.MedicationKnowledgeRelatedMedicationKnowledge)
    embeds_many(:useContext, Fhir.UsageContext)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_copyright, Fhir.Element)
    embeds_one(:_versionAlgorithmString, Fhir.Element)
    embeds_many(:medicineClassification, Fhir.MedicationKnowledgeMedicineClassification)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:definitional, Fhir.MedicationKnowledgeDefinitional)
    embeds_many(:cost, Fhir.MedicationKnowledgeCost)
    embeds_many(:jurisdiction, Fhir.CodeableConcept)
    embeds_many(:associatedMedication, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          versionAlgorithmString: String.t(),
          name: String.t(),
          date: String.t(),
          experimental: boolean(),
          copyright: String.t(),
          description: String.t(),
          purpose: String.t(),
          version: String.t(),
          lastReviewDate: String.t(),
          language: String.t(),
          preparationInstruction: String.t(),
          approvalDate: String.t(),
          resourceType: String.t(),
          copyrightLabel: String.t(),
          url: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          title: String.t(),
          publisher: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          intendedJurisdiction: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          _lastReviewDate: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          storageGuideline: [Fhir.MedicationKnowledgeStorageGuideline.t()],
          clinicalUseIssue: [Fhir.Reference.t()],
          versionAlgorithmCoding: Fhir.Coding.t(),
          _url: Fhir.Element.t(),
          endorser: [Fhir.ContactDetail.t()],
          productType: [Fhir.CodeableConcept.t()],
          _purpose: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _copyrightLabel: Fhir.Element.t(),
          indicationGuideline: [Fhir.MedicationKnowledgeIndicationGuideline.t()],
          regulatory: [Fhir.MedicationKnowledgeRegulatory.t()],
          _name: [Fhir.Element.t()],
          effectivePeriod: Fhir.Period.t(),
          _experimental: Fhir.Element.t(),
          monitoringProgram: [Fhir.MedicationKnowledgeMonitoringProgram.t()],
          monograph: [Fhir.MedicationKnowledgeMonograph.t()],
          _approvalDate: Fhir.Element.t(),
          topic: [Fhir.CodeableConcept.t()],
          _preparationInstruction: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          editor: [Fhir.ContactDetail.t()],
          packaging: [Fhir.MedicationKnowledgePackaging.t()],
          reviewer: [Fhir.ContactDetail.t()],
          code: Fhir.CodeableConcept.t(),
          relatedArtifact: [Fhir.RelatedArtifact.t()],
          contact: [Fhir.ContactDetail.t()],
          _publisher: Fhir.Element.t(),
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          author: Fhir.Reference.t(),
          relatedMedicationKnowledge: [Fhir.MedicationKnowledgeRelatedMedicationKnowledge.t()],
          useContext: [Fhir.UsageContext.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          _copyright: Fhir.Element.t(),
          _versionAlgorithmString: Fhir.Element.t(),
          medicineClassification: [Fhir.MedicationKnowledgeMedicineClassification.t()],
          _language: Fhir.Element.t(),
          definitional: Fhir.MedicationKnowledgeDefinitional.t(),
          cost: [Fhir.MedicationKnowledgeCost.t()],
          jurisdiction: [Fhir.CodeableConcept.t()],
          associatedMedication: [Fhir.Reference.t()]
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
      :purpose,
      :version,
      :lastReviewDate,
      :language,
      :preparationInstruction,
      :approvalDate,
      :resourceType,
      :copyrightLabel,
      :url,
      :implicitRules,
      :status,
      :id,
      :title,
      :publisher
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:intendedJurisdiction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_lastReviewDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:storageGuideline, with: &Fhir.MedicationKnowledgeStorageGuideline.changeset/2)
    |> cast_embed(:clinicalUseIssue, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:versionAlgorithmCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:endorser, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:productType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_purpose, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_copyrightLabel, with: &Fhir.Element.changeset/2)
    |> cast_embed(:indicationGuideline,
      with: &Fhir.MedicationKnowledgeIndicationGuideline.changeset/2
    )
    |> cast_embed(:regulatory, with: &Fhir.MedicationKnowledgeRegulatory.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:effectivePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_experimental, with: &Fhir.Element.changeset/2)
    |> cast_embed(:monitoringProgram,
      with: &Fhir.MedicationKnowledgeMonitoringProgram.changeset/2
    )
    |> cast_embed(:monograph, with: &Fhir.MedicationKnowledgeMonograph.changeset/2)
    |> cast_embed(:_approvalDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:topic, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_preparationInstruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:editor, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:packaging, with: &Fhir.MedicationKnowledgePackaging.changeset/2)
    |> cast_embed(:reviewer, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:relatedArtifact, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:_publisher, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:relatedMedicationKnowledge,
      with: &Fhir.MedicationKnowledgeRelatedMedicationKnowledge.changeset/2
    )
    |> cast_embed(:useContext, with: &Fhir.UsageContext.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_versionAlgorithmString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:medicineClassification,
      with: &Fhir.MedicationKnowledgeMedicineClassification.changeset/2
    )
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:definitional, with: &Fhir.MedicationKnowledgeDefinitional.changeset/2)
    |> cast_embed(:cost, with: &Fhir.MedicationKnowledgeCost.changeset/2)
    |> cast_embed(:jurisdiction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:associatedMedication, with: &Fhir.Reference.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:experimental, [true, false])
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:purpose, ~r/^^[\s\S]+$$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :lastReviewDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:preparationInstruction, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :approvalDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:copyrightLabel, ~r/^^[\s\S]+$$/)
    |> validate_format(:url, ~r/^\S*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
