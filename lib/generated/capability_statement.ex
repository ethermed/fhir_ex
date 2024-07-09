defmodule Fhir.CapabilityStatement do
  @moduledoc """
  A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server or Client for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:versionAlgorithmString, :string)
    field(:name, :string)
    field(:imports, :string)
    field(:format, :string)
    field(:date, :string)
    field(:experimental, :boolean)
    field(:copyright, :string)
    field(:kind, :string)
    field(:description, :string)
    field(:patchFormat, :string)
    field(:purpose, :string)
    field(:version, :string)
    field(:language, :string)
    field(:implementationGuide, :string)
    field(:fhirVersion, :string)
    field(:acceptLanguage, :string)
    field(:resourceType, :string, default: "CapabilityStatement")
    field(:copyrightLabel, :string)
    field(:url, :string)
    field(:implicitRules, :string)
    field(:instantiates, :string)
    field(:status, :string)
    field(:id, :string)
    field(:title, :string)
    field(:publisher, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_fhirVersion, Fhir.Element)
    embeds_many(:_acceptLanguage, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:versionAlgorithmCoding, Fhir.Coding)
    embeds_many(:messaging, Fhir.CapabilityStatementMessaging)
    embeds_one(:_url, Fhir.Element)
    embeds_one(:_purpose, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_copyrightLabel, Fhir.Element)
    embeds_one(:implementation, Fhir.CapabilityStatementImplementation)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_experimental, Fhir.Element)
    embeds_one(:_kind, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:rest, Fhir.CapabilityStatementRest)
    embeds_many(:contact, Fhir.ContactDetail)
    embeds_one(:_publisher, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:useContext, Fhir.UsageContext)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:software, Fhir.CapabilityStatementSoftware)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_copyright, Fhir.Element)
    embeds_one(:_versionAlgorithmString, Fhir.Element)
    embeds_many(:_format, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:_patchFormat, Fhir.Element)
    embeds_many(:jurisdiction, Fhir.CodeableConcept)
    embeds_many(:document, Fhir.CapabilityStatementDocument)
  end

  @type t :: %__MODULE__{
          versionAlgorithmString: String.t(),
          name: String.t(),
          imports: String.t(),
          format: String.t(),
          date: String.t(),
          experimental: boolean(),
          copyright: String.t(),
          kind: String.t(),
          description: String.t(),
          patchFormat: String.t(),
          purpose: String.t(),
          version: String.t(),
          language: String.t(),
          implementationGuide: String.t(),
          fhirVersion: String.t(),
          acceptLanguage: String.t(),
          resourceType: String.t(),
          copyrightLabel: String.t(),
          url: String.t(),
          implicitRules: String.t(),
          instantiates: String.t(),
          status: String.t(),
          id: String.t(),
          title: String.t(),
          publisher: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          _fhirVersion: Fhir.Element.t(),
          _acceptLanguage: [Fhir.Element.t()],
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          versionAlgorithmCoding: Fhir.Coding.t(),
          messaging: [Fhir.CapabilityStatementMessaging.t()],
          _url: Fhir.Element.t(),
          _purpose: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _copyrightLabel: Fhir.Element.t(),
          implementation: Fhir.CapabilityStatementImplementation.t(),
          _name: Fhir.Element.t(),
          _experimental: Fhir.Element.t(),
          _kind: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          rest: [Fhir.CapabilityStatementRest.t()],
          contact: [Fhir.ContactDetail.t()],
          _publisher: Fhir.Element.t(),
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          useContext: [Fhir.UsageContext.t()],
          meta: Fhir.Meta.t(),
          software: Fhir.CapabilityStatementSoftware.t(),
          identifier: [Fhir.Identifier.t()],
          _copyright: Fhir.Element.t(),
          _versionAlgorithmString: Fhir.Element.t(),
          _format: [Fhir.Element.t()],
          _language: Fhir.Element.t(),
          _patchFormat: [Fhir.Element.t()],
          jurisdiction: [Fhir.CodeableConcept.t()],
          document: [Fhir.CapabilityStatementDocument.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :versionAlgorithmString,
      :name,
      :imports,
      :format,
      :date,
      :experimental,
      :copyright,
      :kind,
      :description,
      :patchFormat,
      :purpose,
      :version,
      :language,
      :implementationGuide,
      :fhirVersion,
      :acceptLanguage,
      :resourceType,
      :copyrightLabel,
      :url,
      :implicitRules,
      :instantiates,
      :status,
      :id,
      :title,
      :publisher
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_fhirVersion, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_acceptLanguage, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:versionAlgorithmCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:messaging, with: &Fhir.CapabilityStatementMessaging.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_purpose, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_copyrightLabel, with: &Fhir.Element.changeset/2)
    |> cast_embed(:implementation, with: &Fhir.CapabilityStatementImplementation.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_experimental, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_kind, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:rest, with: &Fhir.CapabilityStatementRest.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:_publisher, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:useContext, with: &Fhir.UsageContext.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:software, with: &Fhir.CapabilityStatementSoftware.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_versionAlgorithmString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_format, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_patchFormat, with: &Fhir.Element.changeset/2)
    |> cast_embed(:jurisdiction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:document, with: &Fhir.CapabilityStatementDocument.changeset/2)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:experimental, [true, false])
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(:kind, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:purpose, ~r/^^[\s\S]+$$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:fhirVersion, ~r/^[^\s]+( [^\s]+)*$/)
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
