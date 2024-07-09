defmodule Fhir.DeviceMetric do
  @moduledoc """
  Describes a measurement, calculation or setting capability of a device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:category, :string)
    field(:color, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:operationalStatus, :string)
    field(:resourceType, :string, default: "DeviceMetric")
    embeds_one(:_category, Fhir.Element)
    embeds_one(:_color, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_operationalStatus, Fhir.Element)
    embeds_many(:calibration, Fhir.DeviceMetricCalibration)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:device, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:measurementFrequency, Fhir.Quantity)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:unit, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          category: String.t(),
          color: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          operationalStatus: String.t(),
          resourceType: String.t(),
          _category: Fhir.Element.t(),
          _color: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _operationalStatus: Fhir.Element.t(),
          calibration: [Fhir.DeviceMetricCalibration.t()],
          contained: [Fhir.ResourceList.t()],
          device: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          measurementFrequency: Fhir.Quantity.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          text: Fhir.Narrative.t(),
          type: Fhir.CodeableConcept.t(),
          unit: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :category,
      :color,
      :id,
      :implicitRules,
      :language,
      :operationalStatus,
      :resourceType
    ])
    |> cast_embed(:_category, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_color, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_operationalStatus, with: &Fhir.Element.changeset/2)
    |> cast_embed(:calibration, with: &Fhir.DeviceMetricCalibration.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:device, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:measurementFrequency, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:unit, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:category, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:color, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:operationalStatus, ~r/^[^\s]+( [^\s]+)*$/)
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
