defmodule Fhir.AvailabilityAvailableTime do
  @moduledoc """
  Availability data for an {item}.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:allDay, :boolean)
    field(:availableEndTime, :string)
    field(:availableStartTime, :string)
    field(:daysOfWeek, :string)
    field(:id, :string)
    embeds_one(:_allDay, Fhir.Element)
    embeds_one(:_availableEndTime, Fhir.Element)
    embeds_one(:_availableStartTime, Fhir.Element)
    embeds_many(:_daysOfWeek, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          allDay: boolean(),
          availableEndTime: String.t(),
          availableStartTime: String.t(),
          daysOfWeek: String.t(),
          id: String.t(),
          _allDay: Fhir.Element.t(),
          _availableEndTime: Fhir.Element.t(),
          _availableStartTime: Fhir.Element.t(),
          _daysOfWeek: [Fhir.Element.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:allDay, :availableEndTime, :availableStartTime, :daysOfWeek, :id])
    |> cast_embed(:_allDay, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_availableEndTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_availableStartTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_daysOfWeek, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_inclusion(:allDay, [true, false])
    |> validate_format(
      :availableEndTime,
      ~r/^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?$/
    )
    |> validate_format(
      :availableStartTime,
      ~r/^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?$/
    )
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
