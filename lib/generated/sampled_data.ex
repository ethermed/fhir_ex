defmodule Fhir.SampledData do
  @moduledoc """
  A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:codeMap, :string)
    field(:data, :string)
    field(:dimensions, :float)
    field(:factor, :float)
    field(:id, :string)
    field(:interval, :float)
    field(:intervalUnit, :string)
    field(:lowerLimit, :float)
    field(:offsets, :string)
    field(:upperLimit, :float)
    embeds_one(:_data, Fhir.Element)
    embeds_one(:_dimensions, Fhir.Element)
    embeds_one(:_factor, Fhir.Element)
    embeds_one(:_interval, Fhir.Element)
    embeds_one(:_intervalUnit, Fhir.Element)
    embeds_one(:_lowerLimit, Fhir.Element)
    embeds_one(:_offsets, Fhir.Element)
    embeds_one(:_upperLimit, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:origin, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          codeMap: String.t(),
          data: String.t(),
          dimensions: float(),
          factor: float(),
          id: String.t(),
          interval: float(),
          intervalUnit: String.t(),
          lowerLimit: float(),
          offsets: String.t(),
          upperLimit: float(),
          _data: Fhir.Element.t(),
          _dimensions: Fhir.Element.t(),
          _factor: Fhir.Element.t(),
          _interval: Fhir.Element.t(),
          _intervalUnit: Fhir.Element.t(),
          _lowerLimit: Fhir.Element.t(),
          _offsets: Fhir.Element.t(),
          _upperLimit: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          origin: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :codeMap,
      :data,
      :dimensions,
      :factor,
      :id,
      :interval,
      :intervalUnit,
      :lowerLimit,
      :offsets,
      :upperLimit
    ])
    |> cast_embed(:_data, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_dimensions, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_factor, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_interval, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_intervalUnit, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lowerLimit, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_offsets, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_upperLimit, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:origin, with: &Fhir.Quantity.changeset/2)
    |> validate_format(:codeMap, ~r/^\S*$/)
    |> validate_format(:data, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:intervalUnit, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:offsets, ~r/^^[\s\S]+$$/)
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
