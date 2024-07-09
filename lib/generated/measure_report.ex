defmodule Fhir.MeasureReport do
  @moduledoc """
  The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the resources involved in that calculation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:dataUpdateType, :string)
    field(:date, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:measure, :string)
    field(:resourceType, :string, default: "MeasureReport")
    field(:status, :string)
    field(:type, :string)
    embeds_one(:_dataUpdateType, Fhir.Element)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:evaluatedResource, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:group, Fhir.MeasureReportGroup)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:improvementNotation, Fhir.CodeableConcept)
    embeds_one(:inputParameters, Fhir.Reference)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
    embeds_one(:reporter, Fhir.Reference)
    embeds_one(:reportingVendor, Fhir.Reference)
    embeds_one(:scoring, Fhir.CodeableConcept)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:supplementalData, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          dataUpdateType: String.t(),
          date: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          measure: String.t(),
          resourceType: String.t(),
          status: String.t(),
          type: String.t(),
          _dataUpdateType: Fhir.Element.t(),
          _date: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          evaluatedResource: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          group: [Fhir.MeasureReportGroup.t()],
          identifier: [Fhir.Identifier.t()],
          improvementNotation: Fhir.CodeableConcept.t(),
          inputParameters: Fhir.Reference.t(),
          location: Fhir.Reference.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          period: Fhir.Period.t(),
          reporter: Fhir.Reference.t(),
          reportingVendor: Fhir.Reference.t(),
          scoring: Fhir.CodeableConcept.t(),
          subject: Fhir.Reference.t(),
          supplementalData: [Fhir.Reference.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :dataUpdateType,
      :date,
      :id,
      :implicitRules,
      :language,
      :measure,
      :resourceType,
      :status,
      :type
    ])
    |> cast_embed(:_dataUpdateType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:evaluatedResource, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:group, with: &Fhir.MeasureReportGroup.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:improvementNotation, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:inputParameters, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:reporter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:reportingVendor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:scoring, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:supplementalData, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:dataUpdateType, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:measure, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
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
