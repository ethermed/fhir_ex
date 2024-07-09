defmodule Fhir.ImmunizationEvaluation do
  @moduledoc """
  Describes a comparison of an immunization event against published recommendations to determine if the administration is "valid" in relation to those  recommendations.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:description, :string)
    field(:doseNumber, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "ImmunizationEvaluation")
    field(:series, :string)
    field(:seriesDoses, :string)
    field(:status, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_doseNumber, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_series, Fhir.Element)
    embeds_one(:_seriesDoses, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:authority, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:doseStatus, Fhir.CodeableConcept)
    embeds_many(:doseStatusReason, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:immunizationEvent, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:targetDisease, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          description: String.t(),
          doseNumber: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          series: String.t(),
          seriesDoses: String.t(),
          status: String.t(),
          _date: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _doseNumber: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _series: Fhir.Element.t(),
          _seriesDoses: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          authority: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          doseStatus: Fhir.CodeableConcept.t(),
          doseStatusReason: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          immunizationEvent: Fhir.Reference.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          patient: Fhir.Reference.t(),
          targetDisease: Fhir.CodeableConcept.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :date,
      :description,
      :doseNumber,
      :id,
      :implicitRules,
      :language,
      :resourceType,
      :series,
      :seriesDoses,
      :status
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_doseNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_series, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_seriesDoses, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:authority, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:doseStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:doseStatusReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:immunizationEvent, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:targetDisease, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:doseNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:series, ~r/^^[\s\S]+$$/)
    |> validate_format(:seriesDoses, ~r/^^[\s\S]+$$/)
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
