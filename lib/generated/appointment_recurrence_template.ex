defmodule Fhir.AppointmentRecurrenceTemplate do
  @moduledoc """
  A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:excludingDate, :string)
    field(:excludingRecurrenceId, :string)
    field(:id, :string)
    field(:lastOccurrenceDate, :string)
    field(:occurrenceCount, :float)
    field(:occurrenceDate, :string)
    embeds_many(:_excludingDate, Fhir.Element)
    embeds_many(:_excludingRecurrenceId, Fhir.Element)
    embeds_one(:_lastOccurrenceDate, Fhir.Element)
    embeds_one(:_occurrenceCount, Fhir.Element)
    embeds_many(:_occurrenceDate, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:monthlyTemplate, Fhir.AppointmentMonthlyTemplate)
    embeds_one(:recurrenceType, Fhir.CodeableConcept)
    embeds_one(:timezone, Fhir.CodeableConcept)
    embeds_one(:weeklyTemplate, Fhir.AppointmentWeeklyTemplate)
    embeds_one(:yearlyTemplate, Fhir.AppointmentYearlyTemplate)
  end

  @type t :: %__MODULE__{
          excludingDate: String.t(),
          excludingRecurrenceId: String.t(),
          id: String.t(),
          lastOccurrenceDate: String.t(),
          occurrenceCount: float(),
          occurrenceDate: String.t(),
          _excludingDate: [Fhir.Element.t()],
          _excludingRecurrenceId: [Fhir.Element.t()],
          _lastOccurrenceDate: Fhir.Element.t(),
          _occurrenceCount: Fhir.Element.t(),
          _occurrenceDate: [Fhir.Element.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          monthlyTemplate: Fhir.AppointmentMonthlyTemplate.t(),
          recurrenceType: Fhir.CodeableConcept.t(),
          timezone: Fhir.CodeableConcept.t(),
          weeklyTemplate: Fhir.AppointmentWeeklyTemplate.t(),
          yearlyTemplate: Fhir.AppointmentYearlyTemplate.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :excludingDate,
      :excludingRecurrenceId,
      :id,
      :lastOccurrenceDate,
      :occurrenceCount,
      :occurrenceDate
    ])
    |> cast_embed(:_excludingDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_excludingRecurrenceId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lastOccurrenceDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurrenceCount, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurrenceDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:monthlyTemplate, with: &Fhir.AppointmentMonthlyTemplate.changeset/2)
    |> cast_embed(:recurrenceType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:timezone, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:weeklyTemplate, with: &Fhir.AppointmentWeeklyTemplate.changeset/2)
    |> cast_embed(:yearlyTemplate, with: &Fhir.AppointmentYearlyTemplate.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :lastOccurrenceDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
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
