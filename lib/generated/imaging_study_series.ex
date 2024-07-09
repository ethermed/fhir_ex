defmodule Fhir.ImagingStudySeries do
  @moduledoc """
  Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:number, :float)
    field(:numberOfInstances, :float)
    field(:started, :string)
    field(:uid, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_number, Fhir.Element)
    embeds_one(:_numberOfInstances, Fhir.Element)
    embeds_one(:_started, Fhir.Element)
    embeds_one(:_uid, Fhir.Element)
    embeds_one(:bodySite, Fhir.CodeableReference)
    embeds_many(:endpoint, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:instance, Fhir.ImagingStudyInstance)
    embeds_one(:laterality, Fhir.CodeableConcept)
    embeds_one(:modality, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:performer, Fhir.ImagingStudyPerformer)
    embeds_many(:specimen, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          number: float(),
          numberOfInstances: float(),
          started: String.t(),
          uid: String.t(),
          _description: Fhir.Element.t(),
          _number: Fhir.Element.t(),
          _numberOfInstances: Fhir.Element.t(),
          _started: Fhir.Element.t(),
          _uid: Fhir.Element.t(),
          bodySite: Fhir.CodeableReference.t(),
          endpoint: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          instance: [Fhir.ImagingStudyInstance.t()],
          laterality: Fhir.CodeableConcept.t(),
          modality: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          performer: [Fhir.ImagingStudyPerformer.t()],
          specimen: [Fhir.Reference.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :number, :numberOfInstances, :started, :uid])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_number, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_numberOfInstances, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_started, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_uid, with: &Fhir.Element.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:instance, with: &Fhir.ImagingStudyInstance.changeset/2)
    |> cast_embed(:laterality, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modality, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:performer, with: &Fhir.ImagingStudyPerformer.changeset/2)
    |> cast_embed(:specimen, with: &Fhir.Reference.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:number, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:numberOfInstances, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(
      :started,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:uid, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
