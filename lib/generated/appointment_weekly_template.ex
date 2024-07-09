defmodule Fhir.AppointmentWeeklyTemplate do
  @moduledoc """
  A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:friday, :boolean)
    field(:id, :string)
    field(:monday, :boolean)
    field(:saturday, :boolean)
    field(:sunday, :boolean)
    field(:thursday, :boolean)
    field(:tuesday, :boolean)
    field(:wednesday, :boolean)
    field(:weekInterval, :float)
    embeds_one(:_friday, Fhir.Element)
    embeds_one(:_monday, Fhir.Element)
    embeds_one(:_saturday, Fhir.Element)
    embeds_one(:_sunday, Fhir.Element)
    embeds_one(:_thursday, Fhir.Element)
    embeds_one(:_tuesday, Fhir.Element)
    embeds_one(:_wednesday, Fhir.Element)
    embeds_one(:_weekInterval, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          friday: boolean(),
          id: String.t(),
          monday: boolean(),
          saturday: boolean(),
          sunday: boolean(),
          thursday: boolean(),
          tuesday: boolean(),
          wednesday: boolean(),
          weekInterval: float(),
          _friday: Fhir.Element.t(),
          _monday: Fhir.Element.t(),
          _saturday: Fhir.Element.t(),
          _sunday: Fhir.Element.t(),
          _thursday: Fhir.Element.t(),
          _tuesday: Fhir.Element.t(),
          _wednesday: Fhir.Element.t(),
          _weekInterval: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :friday,
      :id,
      :monday,
      :saturday,
      :sunday,
      :thursday,
      :tuesday,
      :wednesday,
      :weekInterval
    ])
    |> cast_embed(:_friday, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_monday, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_saturday, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sunday, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_thursday, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_tuesday, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_wednesday, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_weekInterval, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_inclusion(:friday, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:monday, [true, false])
    |> validate_inclusion(:saturday, [true, false])
    |> validate_inclusion(:sunday, [true, false])
    |> validate_inclusion(:thursday, [true, false])
    |> validate_inclusion(:tuesday, [true, false])
    |> validate_inclusion(:wednesday, [true, false])
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
