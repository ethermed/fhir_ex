defmodule Fhir.AppointmentMonthlyTemplate do
  @moduledoc """
  A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:dayOfMonth, :float)
    field(:id, :string)
    field(:monthInterval, :float)
    embeds_one(:_dayOfMonth, Fhir.Element)
    embeds_one(:_monthInterval, Fhir.Element)
    embeds_one(:dayOfWeek, Fhir.Coding)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:nthWeekOfMonth, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          dayOfMonth: float(),
          id: String.t(),
          monthInterval: float(),
          _dayOfMonth: Fhir.Element.t(),
          _monthInterval: Fhir.Element.t(),
          dayOfWeek: Fhir.Coding.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          nthWeekOfMonth: Fhir.Coding.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:dayOfMonth, :id, :monthInterval])
    |> cast_embed(:_dayOfMonth, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_monthInterval, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dayOfWeek, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:nthWeekOfMonth, with: &Fhir.Coding.changeset/2)
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
