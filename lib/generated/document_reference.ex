defmodule Fhir.DocumentReference do
  @moduledoc """
  A reference to a document of any kind for any purpose. While the term “document” implies a more narrow focus, for this resource this "document" encompasses *any* serialized object with a mime-type, it includes formal patient-centric documents (CDA), clinical notes, scanned paper, non-patient specific documents like policy text, as well as a photo, video, or audio recording acquired or used in healthcare.  The DocumentReference resource provides metadata about the document so that the document can be discovered and managed.  The actual content may be inline base64 encoded data or provided by direct reference.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:description, :string)
    field(:docStatus, :string)
    field(:version, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "DocumentReference")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:custodian, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_docStatus, Fhir.Element)
    embeds_one(:facilityType, Fhir.CodeableConcept)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:attester, Fhir.DocumentReferenceAttester)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:securityLabel, Fhir.CodeableConcept)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:bodySite, Fhir.CodeableReference)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:event, Fhir.CodeableReference)
    embeds_many(:relatesTo, Fhir.DocumentReferenceRelatesTo)
    embeds_many(:author, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:practiceSetting, Fhir.CodeableConcept)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:context, Fhir.Reference)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:content, Fhir.DocumentReferenceContent)
    embeds_one(:period, Fhir.Period)
    embeds_many(:modality, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          description: String.t(),
          docStatus: String.t(),
          version: String.t(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          custodian: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          _implicitRules: Fhir.Element.t(),
          _docStatus: Fhir.Element.t(),
          facilityType: Fhir.CodeableConcept.t(),
          basedOn: [Fhir.Reference.t()],
          attester: [Fhir.DocumentReferenceAttester.t()],
          _description: Fhir.Element.t(),
          securityLabel: [Fhir.CodeableConcept.t()],
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          bodySite: [Fhir.CodeableReference.t()],
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          event: [Fhir.CodeableReference.t()],
          relatesTo: [Fhir.DocumentReferenceRelatesTo.t()],
          author: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          practiceSetting: Fhir.CodeableConcept.t(),
          identifier: [Fhir.Identifier.t()],
          context: [Fhir.Reference.t()],
          type: Fhir.CodeableConcept.t(),
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          content: [Fhir.DocumentReferenceContent.t()],
          period: Fhir.Period.t(),
          modality: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :date,
      :description,
      :docStatus,
      :version,
      :language,
      :resourceType,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:custodian, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_docStatus, with: &Fhir.Element.changeset/2)
    |> cast_embed(:facilityType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:attester, with: &Fhir.DocumentReferenceAttester.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:securityLabel, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:event, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:relatesTo, with: &Fhir.DocumentReferenceRelatesTo.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:practiceSetting, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:context, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:content, with: &Fhir.DocumentReferenceContent.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:modality, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:docStatus, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
