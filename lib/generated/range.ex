defmodule Fhir.Range do
  @moduledoc """
  A set of ordered Quantities defined by a low and high limit.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:high, Fhir.Quantity)
    embeds_one(:low, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          high: Fhir.Quantity.t(),
          low: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:high, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:low, with: &Fhir.Quantity.changeset/2)
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
