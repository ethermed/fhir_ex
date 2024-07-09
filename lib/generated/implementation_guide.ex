defmodule Fhir.ImplementationGuide do
  @moduledoc """
  A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:packageId, :string)
    field(:versionAlgorithmString, :string)
    field(:name, :string)
    field(:date, :string)
    field(:experimental, :boolean)
    field(:copyright, :string)
    field(:license, :string)
    field(:description, :string)
    field(:purpose, :string)
    field(:version, :string)
    field(:language, :string)
    field(:fhirVersion, :string)
    field(:resourceType, :string, default: "ImplementationGuide")
    field(:copyrightLabel, :string)
    field(:url, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    field(:title, :string)
    field(:publisher, :string)
    embeds_one(:_packageId, Fhir.Element)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:_fhirVersion, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:_license, Fhir.Element)
    embeds_many(:global, Fhir.ImplementationGuideGlobal)
    embeds_one(:versionAlgorithmCoding, Fhir.Coding)
    embeds_one(:_url, Fhir.Element)
    embeds_one(:_purpose, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_copyrightLabel, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:dependsOn, Fhir.ImplementationGuideDependsOn)
    embeds_one(:_experimental, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:contact, Fhir.ContactDetail)
    embeds_one(:_publisher, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:useContext, Fhir.UsageContext)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_copyright, Fhir.Element)
    embeds_one(:definition, Fhir.ImplementationGuideDefinition)
    embeds_one(:_versionAlgorithmString, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:manifest, Fhir.ImplementationGuideManifest)
    embeds_many(:jurisdiction, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          packageId: String.t(),
          versionAlgorithmString: String.t(),
          name: String.t(),
          date: String.t(),
          experimental: boolean(),
          copyright: String.t(),
          license: String.t(),
          description: String.t(),
          purpose: String.t(),
          version: String.t(),
          language: String.t(),
          fhirVersion: String.t(),
          resourceType: String.t(),
          copyrightLabel: String.t(),
          url: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          title: String.t(),
          publisher: String.t(),
          _packageId: Fhir.Element.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          _fhirVersion: [Fhir.Element.t()],
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          _license: Fhir.Element.t(),
          global: [Fhir.ImplementationGuideGlobal.t()],
          versionAlgorithmCoding: Fhir.Coding.t(),
          _url: Fhir.Element.t(),
          _purpose: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _copyrightLabel: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          dependsOn: [Fhir.ImplementationGuideDependsOn.t()],
          _experimental: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          contact: [Fhir.ContactDetail.t()],
          _publisher: Fhir.Element.t(),
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          useContext: [Fhir.UsageContext.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          _copyright: Fhir.Element.t(),
          definition: Fhir.ImplementationGuideDefinition.t(),
          _versionAlgorithmString: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          manifest: Fhir.ImplementationGuideManifest.t(),
          jurisdiction: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :packageId,
      :versionAlgorithmString,
      :name,
      :date,
      :experimental,
      :copyright,
      :license,
      :description,
      :purpose,
      :version,
      :language,
      :fhirVersion,
      :resourceType,
      :copyrightLabel,
      :url,
      :implicitRules,
      :status,
      :id,
      :title,
      :publisher
    ])
    |> cast_embed(:_packageId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_fhirVersion, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_license, with: &Fhir.Element.changeset/2)
    |> cast_embed(:global, with: &Fhir.ImplementationGuideGlobal.changeset/2)
    |> cast_embed(:versionAlgorithmCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_purpose, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_copyrightLabel, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dependsOn, with: &Fhir.ImplementationGuideDependsOn.changeset/2)
    |> cast_embed(:_experimental, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:_publisher, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:useContext, with: &Fhir.UsageContext.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:definition, with: &Fhir.ImplementationGuideDefinition.changeset/2)
    |> cast_embed(:_versionAlgorithmString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:manifest, with: &Fhir.ImplementationGuideManifest.changeset/2)
    |> cast_embed(:jurisdiction, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:packageId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:experimental, [true, false])
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(:license, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:purpose, ~r/^^[\s\S]+$$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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
