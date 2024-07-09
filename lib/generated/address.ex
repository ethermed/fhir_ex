defmodule Fhir.Address do
  @moduledoc """
  An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This data type may be used to convey addresses for use in delivering mail as well as for visiting locations which might not be valid for mail delivery.  There are a variety of postal address formats defined around the world.
  The ISO21090-codedString may be used to provide a coded representation of the contents of strings in an Address.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:city, :string)
    field(:country, :string)
    field(:district, :string)
    field(:id, :string)
    field(:line, :string)
    field(:postalCode, :string)
    field(:state, :string)
    field(:text, :string)
    field(:type, Ecto.Enum, values: [:postal, :physical, :both])
    field(:use, Ecto.Enum, values: [:home, :work, :temp, :old, :billing])
    embeds_one(:_city, Fhir.Element)
    embeds_one(:_country, Fhir.Element)
    embeds_one(:_district, Fhir.Element)
    embeds_many(:_line, Fhir.Element)
    embeds_one(:_postalCode, Fhir.Element)
    embeds_one(:_state, Fhir.Element)
    embeds_one(:_text, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_one(:_use, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
  end

  @type t :: %__MODULE__{
          city: String.t(),
          country: String.t(),
          district: String.t(),
          id: String.t(),
          line: String.t(),
          postalCode: String.t(),
          state: String.t(),
          text: String.t(),
          type: String.t(),
          use: String.t(),
          _city: Fhir.Element.t(),
          _country: Fhir.Element.t(),
          _district: Fhir.Element.t(),
          _line: [Fhir.Element.t()],
          _postalCode: Fhir.Element.t(),
          _state: Fhir.Element.t(),
          _text: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          _use: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          period: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :city,
      :country,
      :district,
      :id,
      :line,
      :postalCode,
      :state,
      :text,
      :type,
      :use
    ])
    |> cast_embed(:_city, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_country, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_district, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_line, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_postalCode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_state, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_use, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> validate_format(:city, ~r/^^[\s\S]+$$/)
    |> validate_format(:country, ~r/^^[\s\S]+$$/)
    |> validate_format(:district, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:postalCode, ~r/^^[\s\S]+$$/)
    |> validate_format(:state, ~r/^^[\s\S]+$$/)
    |> validate_format(:text, ~r/^^[\s\S]+$$/)
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
