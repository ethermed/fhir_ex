defmodule Fhir.Contract do
  @moduledoc """
  Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:name, :string)
    field(:instantiatesUri, :string)
    field(:version, :string)
    field(:language, :string)
    field(:alias, :string)
    field(:resourceType, :string, default: "Contract")
    field(:url, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:subtitle, :string)
    field(:id, :string)
    field(:issued, :string)
    field(:title, :string)
    embeds_many(:signer, Fhir.ContractSigner)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:legallyBindingAttachment, Fhir.Attachment)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:relevantHistory, Fhir.Reference)
    embeds_one(:applies, Fhir.Period)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:contentDerivative, Fhir.CodeableConcept)
    embeds_one(:expirationType, Fhir.CodeableConcept)
    embeds_one(:_url, Fhir.Element)
    embeds_many(:domain, Fhir.Reference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:authority, Fhir.Reference)
    embeds_one(:topicReference, Fhir.Reference)
    embeds_one(:topicCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:contentDefinition, Fhir.ContractContentDefinition)
    embeds_many(:friendly, Fhir.ContractFriendly)
    embeds_one(:instantiatesCanonical, Fhir.Reference)
    embeds_many(:site, Fhir.Reference)
    embeds_one(:_instantiatesUri, Fhir.Element)
    embeds_many(:subType, Fhir.CodeableConcept)
    embeds_one(:legallyBindingReference, Fhir.Reference)
    embeds_many(:supportingInfo, Fhir.Reference)
    embeds_many(:subject, Fhir.Reference)
    embeds_many(:rule, Fhir.ContractRule)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_one(:scope, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:author, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:legal, Fhir.ContractLegal)
    embeds_one(:_issued, Fhir.Element)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_subtitle, Fhir.Element)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:_alias, Fhir.Element)
    embeds_one(:legalState, Fhir.CodeableConcept)
    embeds_many(:term, Fhir.ContractTerm)
  end

  @type t :: %__MODULE__{
          name: String.t(),
          instantiatesUri: String.t(),
          version: String.t(),
          language: String.t(),
          alias: String.t(),
          resourceType: String.t(),
          url: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          subtitle: String.t(),
          id: String.t(),
          issued: String.t(),
          title: String.t(),
          signer: [Fhir.ContractSigner.t()],
          _status: Fhir.Element.t(),
          legallyBindingAttachment: Fhir.Attachment.t(),
          extension: [Fhir.Extension.t()],
          relevantHistory: [Fhir.Reference.t()],
          applies: Fhir.Period.t(),
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          contentDerivative: Fhir.CodeableConcept.t(),
          expirationType: Fhir.CodeableConcept.t(),
          _url: Fhir.Element.t(),
          domain: [Fhir.Reference.t()],
          _implicitRules: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          authority: [Fhir.Reference.t()],
          topicReference: Fhir.Reference.t(),
          topicCodeableConcept: Fhir.CodeableConcept.t(),
          contentDefinition: Fhir.ContractContentDefinition.t(),
          friendly: [Fhir.ContractFriendly.t()],
          instantiatesCanonical: Fhir.Reference.t(),
          site: [Fhir.Reference.t()],
          _instantiatesUri: Fhir.Element.t(),
          subType: [Fhir.CodeableConcept.t()],
          legallyBindingReference: Fhir.Reference.t(),
          supportingInfo: [Fhir.Reference.t()],
          subject: [Fhir.Reference.t()],
          rule: [Fhir.ContractRule.t()],
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          scope: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          author: Fhir.Reference.t(),
          meta: Fhir.Meta.t(),
          legal: [Fhir.ContractLegal.t()],
          _issued: Fhir.Element.t(),
          identifier: [Fhir.Identifier.t()],
          _subtitle: Fhir.Element.t(),
          type: Fhir.CodeableConcept.t(),
          _language: Fhir.Element.t(),
          _alias: [Fhir.Element.t()],
          legalState: Fhir.CodeableConcept.t(),
          term: [Fhir.ContractTerm.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :name,
      :instantiatesUri,
      :version,
      :language,
      :alias,
      :resourceType,
      :url,
      :implicitRules,
      :status,
      :subtitle,
      :id,
      :issued,
      :title
    ])
    |> cast_embed(:signer, with: &Fhir.ContractSigner.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:legallyBindingAttachment, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:relevantHistory, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:applies, with: &Fhir.Period.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contentDerivative, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:expirationType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:domain, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:authority, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:topicReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:topicCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contentDefinition, with: &Fhir.ContractContentDefinition.changeset/2)
    |> cast_embed(:friendly, with: &Fhir.ContractFriendly.changeset/2)
    |> cast_embed(:instantiatesCanonical, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:site, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:subType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:legallyBindingReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:supportingInfo, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:rule, with: &Fhir.ContractRule.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:scope, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:legal, with: &Fhir.ContractLegal.changeset/2)
    |> cast_embed(:_issued, with: &Fhir.Element.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_subtitle, with: &Fhir.Element.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_alias, with: &Fhir.Element.changeset/2)
    |> cast_embed(:legalState, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:term, with: &Fhir.ContractTerm.changeset/2)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(:instantiatesUri, ~r/^\S*$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:url, ~r/^\S*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:subtitle, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(
      :issued,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
