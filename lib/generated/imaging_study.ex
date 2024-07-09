defmodule Fhir.ImagingStudy do
  @moduledoc """
  Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:started, :string)
    field(:description, :string)
    field(:numberOfInstances, :float)
    field(:numberOfSeries, :float)
    field(:language, :string)
    field(:resourceType, :string, default: "ImagingStudy")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_numberOfSeries, Fhir.Element)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_started, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:endpoint, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:procedure, Fhir.CodeableReference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:referrer, Fhir.Reference)
    embeds_many(:partOf, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:series, Fhir.ImagingStudySeries)
    embeds_many(:modality, Fhir.CodeableConcept)
    embeds_one(:_numberOfInstances, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          started: String.t(),
          description: String.t(),
          numberOfInstances: float(),
          numberOfSeries: float(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          _numberOfSeries: Fhir.Element.t(),
          reason: [Fhir.CodeableReference.t()],
          _started: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          basedOn: [Fhir.Reference.t()],
          _description: Fhir.Element.t(),
          encounter: Fhir.Reference.t(),
          location: Fhir.Reference.t(),
          subject: Fhir.Reference.t(),
          endpoint: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          procedure: [Fhir.CodeableReference.t()],
          identifier: [Fhir.Identifier.t()],
          referrer: Fhir.Reference.t(),
          partOf: [Fhir.Reference.t()],
          _language: Fhir.Element.t(),
          series: [Fhir.ImagingStudySeries.t()],
          modality: [Fhir.CodeableConcept.t()],
          _numberOfInstances: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :started,
      :description,
      :numberOfInstances,
      :numberOfSeries,
      :language,
      :resourceType,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_numberOfSeries, with: &Fhir.Element.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_started, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:procedure, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:referrer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:series, with: &Fhir.ImagingStudySeries.changeset/2)
    |> cast_embed(:modality, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_numberOfInstances, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :started,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:numberOfInstances, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:numberOfSeries, ~r/^[0]|([1-9][0-9]*)$/)
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
