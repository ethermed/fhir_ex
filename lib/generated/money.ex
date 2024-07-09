defmodule Fhir.Money do
  @moduledoc """
  An amount of economic utility in some recognized currency.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:currency, :string)
    field(:id, :string)
    field(:value, :float)
    embeds_one(:_currency, Fhir.Element)
    embeds_one(:_value, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          currency: String.t(),
          id: String.t(),
          value: float(),
          _currency: Fhir.Element.t(),
          _value: Fhir.Element.t(),
          extension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:currency, :id, :value])
    |> cast_embed(:_currency, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_value, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:currency, ~r/^[^\s]+( [^\s]+)*$/)
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
