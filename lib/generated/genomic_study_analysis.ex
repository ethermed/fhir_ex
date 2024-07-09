defmodule Fhir.GenomicStudyAnalysis do
  @moduledoc """
  A GenomicStudy is a set of analyses performed to analyze and generate genomic data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:id, :string)
    field(:instantiatesCanonical, :string)
    field(:instantiatesUri, :string)
    field(:title, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_instantiatesUri, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:changeType, Fhir.CodeableConcept)
    embeds_many(:device, Fhir.GenomicStudyDevice)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:focus, Fhir.Reference)
    embeds_one(:genomeBuild, Fhir.CodeableConcept)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:input, Fhir.GenomicStudyInput)
    embeds_many(:methodType, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_many(:output, Fhir.GenomicStudyOutput)
    embeds_many(:performer, Fhir.GenomicStudyPerformer)
    embeds_one(:protocolPerformed, Fhir.Reference)
    embeds_many(:regionsCalled, Fhir.Reference)
    embeds_many(:regionsStudied, Fhir.Reference)
    embeds_many(:specimen, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          id: String.t(),
          instantiatesCanonical: String.t(),
          instantiatesUri: String.t(),
          title: String.t(),
          _date: Fhir.Element.t(),
          _instantiatesUri: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          changeType: [Fhir.CodeableConcept.t()],
          device: [Fhir.GenomicStudyDevice.t()],
          extension: [Fhir.Extension.t()],
          focus: [Fhir.Reference.t()],
          genomeBuild: Fhir.CodeableConcept.t(),
          identifier: [Fhir.Identifier.t()],
          input: [Fhir.GenomicStudyInput.t()],
          methodType: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          output: [Fhir.GenomicStudyOutput.t()],
          performer: [Fhir.GenomicStudyPerformer.t()],
          protocolPerformed: Fhir.Reference.t(),
          regionsCalled: [Fhir.Reference.t()],
          regionsStudied: [Fhir.Reference.t()],
          specimen: [Fhir.Reference.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:date, :id, :instantiatesCanonical, :instantiatesUri, :title])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:changeType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:device, with: &Fhir.GenomicStudyDevice.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:focus, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:genomeBuild, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:input, with: &Fhir.GenomicStudyInput.changeset/2)
    |> cast_embed(:methodType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:output, with: &Fhir.GenomicStudyOutput.changeset/2)
    |> cast_embed(:performer, with: &Fhir.GenomicStudyPerformer.changeset/2)
    |> cast_embed(:protocolPerformed, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:regionsCalled, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:regionsStudied, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:specimen, with: &Fhir.Reference.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:instantiatesCanonical, ~r/^\S*$/)
    |> validate_format(:instantiatesUri, ~r/^\S*$/)
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
