defmodule Fhir.TimingRepeat do
  @moduledoc """
  Specifies an event that may occur multiple times. Timing schedules are used to record when things are planned, expected or requested to occur. The most common usage is in dosage instructions for medications. They are also used when planning care of various kinds, and may be used for reporting the schedule to which past regular activities were carried out.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:dayOfWeek, :string)
    field(:durationUnit, Ecto.Enum, values: [:s, :min, :h, :d, :wk, :mo, :a])
    field(:count, :float)
    field(:countMax, :float)
    field(:periodUnit, Ecto.Enum, values: [:s, :min, :h, :d, :wk, :mo, :a])
    field(:when, {:array, :string})
    field(:frequency, :float)
    field(:periodMax, :float)
    field(:durationMax, :float)
    field(:timeOfDay, :string)
    field(:duration, :float)
    field(:frequencyMax, :float)
    field(:offset, :float)
    field(:period, :float)
    field(:id, :string)
    embeds_many(:_when, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:boundsDuration, Fhir.Duration)
    embeds_one(:_frequencyMax, Fhir.Element)
    embeds_one(:_duration, Fhir.Element)
    embeds_many(:_timeOfDay, Fhir.Element)
    embeds_many(:_dayOfWeek, Fhir.Element)
    embeds_one(:_periodUnit, Fhir.Element)
    embeds_one(:_durationUnit, Fhir.Element)
    embeds_one(:_durationMax, Fhir.Element)
    embeds_one(:_periodMax, Fhir.Element)
    embeds_one(:_frequency, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_offset, Fhir.Element)
    embeds_one(:boundsRange, Fhir.Range)
    embeds_one(:_countMax, Fhir.Element)
    embeds_one(:boundsPeriod, Fhir.Period)
    embeds_one(:_period, Fhir.Element)
    embeds_one(:_count, Fhir.Element)
  end

  @type t :: %__MODULE__{
          dayOfWeek: String.t(),
          durationUnit: String.t(),
          count: float(),
          countMax: float(),
          periodUnit: String.t(),
          when: [String.t()],
          frequency: float(),
          periodMax: float(),
          durationMax: float(),
          timeOfDay: String.t(),
          duration: float(),
          frequencyMax: float(),
          offset: float(),
          period: float(),
          id: String.t(),
          _when: [Fhir.Element.t()],
          extension: [Fhir.Extension.t()],
          boundsDuration: Fhir.Duration.t(),
          _frequencyMax: Fhir.Element.t(),
          _duration: Fhir.Element.t(),
          _timeOfDay: [Fhir.Element.t()],
          _dayOfWeek: [Fhir.Element.t()],
          _periodUnit: Fhir.Element.t(),
          _durationUnit: Fhir.Element.t(),
          _durationMax: Fhir.Element.t(),
          _periodMax: Fhir.Element.t(),
          _frequency: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          _offset: Fhir.Element.t(),
          boundsRange: Fhir.Range.t(),
          _countMax: Fhir.Element.t(),
          boundsPeriod: Fhir.Period.t(),
          _period: Fhir.Element.t(),
          _count: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :dayOfWeek,
      :durationUnit,
      :count,
      :countMax,
      :periodUnit,
      :when,
      :frequency,
      :periodMax,
      :durationMax,
      :timeOfDay,
      :duration,
      :frequencyMax,
      :offset,
      :period,
      :id
    ])
    |> cast_embed(:_when, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:boundsDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:_frequencyMax, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_duration, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_timeOfDay, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_dayOfWeek, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_periodUnit, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_durationUnit, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_durationMax, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_periodMax, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_frequency, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_offset, with: &Fhir.Element.changeset/2)
    |> cast_embed(:boundsRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:_countMax, with: &Fhir.Element.changeset/2)
    |> cast_embed(:boundsPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_period, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_count, with: &Fhir.Element.changeset/2)
    |> validate_format(:offset, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
