defmodule Fhir.Ratio do
  @moduledoc """
  A relationship of two Quantity values - expressed as a numerator and a denominator.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:denominator, Fhir.Quantity)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:numerator, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          denominator: Fhir.Quantity.t(),
          extension: [Fhir.Extension.t()],
          numerator: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:denominator, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:numerator, with: &Fhir.Quantity.changeset/2)
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
