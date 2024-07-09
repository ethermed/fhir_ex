defmodule Fhir.Composition do
  @moduledoc """
  A set of healthcare-related information that is assembled together into a single logical package that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. A Composition defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:name, :string)
    field(:date, :string)
    field(:version, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Composition")
    field(:url, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    field(:title, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:custodian, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:_url, Fhir.Element)
    embeds_many(:section, Fhir.CompositionSection)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:attester, Fhir.CompositionAttester)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:event, Fhir.CompositionEvent)
    embeds_many(:relatesTo, Fhir.RelatedArtifact)
    embeds_many(:author, Fhir.Reference)
    embeds_many(:useContext, Fhir.UsageContext)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          name: String.t(),
          date: String.t(),
          version: String.t(),
          language: String.t(),
          resourceType: String.t(),
          url: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          title: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          custodian: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          _url: Fhir.Element.t(),
          section: [Fhir.CompositionSection.t()],
          _implicitRules: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          attester: [Fhir.CompositionAttester.t()],
          encounter: Fhir.Reference.t(),
          subject: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          event: [Fhir.CompositionEvent.t()],
          relatesTo: [Fhir.RelatedArtifact.t()],
          author: [Fhir.Reference.t()],
          useContext: [Fhir.UsageContext.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          type: Fhir.CodeableConcept.t(),
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :name,
      :date,
      :version,
      :language,
      :resourceType,
      :url,
      :implicitRules,
      :status,
      :id,
      :title
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:custodian, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:section, with: &Fhir.CompositionSection.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:attester, with: &Fhir.CompositionAttester.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:event, with: &Fhir.CompositionEvent.changeset/2)
    |> cast_embed(:relatesTo, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:useContext, with: &Fhir.UsageContext.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
