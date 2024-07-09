defmodule Fhir.LocationPosition do
  @moduledoc """
  Details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:altitude, :float)
    field(:id, :string)
    field(:latitude, :float)
    field(:longitude, :float)
    embeds_one(:_altitude, Fhir.Element)
    embeds_one(:_latitude, Fhir.Element)
    embeds_one(:_longitude, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          altitude: float(),
          id: String.t(),
          latitude: float(),
          longitude: float(),
          _altitude: Fhir.Element.t(),
          _latitude: Fhir.Element.t(),
          _longitude: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:altitude, :id, :latitude, :longitude])
    |> cast_embed(:_altitude, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_latitude, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_longitude, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
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
