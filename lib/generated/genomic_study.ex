defmodule Fhir.GenomicStudy do
  @moduledoc """
  A GenomicStudy is a set of analyses performed to analyze and generate genomic data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:instantiatesCanonical, :string)
    field(:instantiatesUri, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "GenomicStudy")
    field(:startDate, :string)
    field(:status, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_instantiatesUri, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_startDate, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:analysis, Fhir.GenomicStudyAnalysis)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:interpreter, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:referrer, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          instantiatesCanonical: String.t(),
          instantiatesUri: String.t(),
          language: String.t(),
          resourceType: String.t(),
          startDate: String.t(),
          status: String.t(),
          _description: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _instantiatesUri: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _startDate: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          analysis: [Fhir.GenomicStudyAnalysis.t()],
          basedOn: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          encounter: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          interpreter: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          reason: [Fhir.CodeableReference.t()],
          referrer: Fhir.Reference.t(),
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          type: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :description,
      :id,
      :implicitRules,
      :instantiatesCanonical,
      :instantiatesUri,
      :language,
      :resourceType,
      :startDate,
      :status
    ])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_startDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:analysis, with: &Fhir.GenomicStudyAnalysis.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:interpreter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:referrer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:instantiatesCanonical, ~r/^\S*$/)
    |> validate_format(:instantiatesUri, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :startDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
