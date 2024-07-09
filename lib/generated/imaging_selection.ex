defmodule Fhir.ImagingSelection do
  @moduledoc """
  A selection of DICOM SOP instances and/or frames within a single Study and Series. This might include additional specifics such as an image region, an Observation UID or a Segmentation Number, allowing linkage to an Observation Resource or transferring this information along with the ImagingStudy Resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:seriesNumber, :float)
    field(:seriesUid, :string)
    field(:language, :string)
    field(:frameOfReferenceUid, :string)
    field(:studyUid, :string)
    field(:resourceType, :string, default: "ImagingSelection")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    field(:issued, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_seriesUid, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:derivedFrom, Fhir.Reference)
    embeds_one(:_seriesNumber, Fhir.Element)
    embeds_many(:focus, Fhir.Reference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:performer, Fhir.ImagingSelectionPerformer)
    embeds_one(:_studyUid, Fhir.Element)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:endpoint, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:bodySite, Fhir.CodeableReference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:instance, Fhir.ImagingSelectionInstance)
    embeds_one(:_issued, Fhir.Element)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_frameOfReferenceUid, Fhir.Element)
  end

  @type t :: %__MODULE__{
          seriesNumber: float(),
          seriesUid: String.t(),
          language: String.t(),
          frameOfReferenceUid: String.t(),
          studyUid: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          issued: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          _seriesUid: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          derivedFrom: [Fhir.Reference.t()],
          _seriesNumber: Fhir.Element.t(),
          focus: [Fhir.Reference.t()],
          basedOn: [Fhir.Reference.t()],
          performer: [Fhir.ImagingSelectionPerformer.t()],
          _studyUid: Fhir.Element.t(),
          code: Fhir.CodeableConcept.t(),
          subject: Fhir.Reference.t(),
          endpoint: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          bodySite: Fhir.CodeableReference.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          instance: [Fhir.ImagingSelectionInstance.t()],
          _issued: Fhir.Element.t(),
          identifier: [Fhir.Identifier.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          _frameOfReferenceUid: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :seriesNumber,
      :seriesUid,
      :language,
      :frameOfReferenceUid,
      :studyUid,
      :resourceType,
      :implicitRules,
      :status,
      :id,
      :issued
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_seriesUid, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:derivedFrom, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_seriesNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:focus, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performer, with: &Fhir.ImagingSelectionPerformer.changeset/2)
    |> cast_embed(:_studyUid, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:instance, with: &Fhir.ImagingSelectionInstance.changeset/2)
    |> cast_embed(:_issued, with: &Fhir.Element.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_frameOfReferenceUid, with: &Fhir.Element.changeset/2)
    |> validate_format(:seriesNumber, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:seriesUid, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:frameOfReferenceUid, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:studyUid, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(
      :issued,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
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
