defmodule Fhir.MonetaryComponent do
  @moduledoc """
  Availability data for an {item}.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:factor, :float)
    field(:id, :string)
    field(:type, :string)
    embeds_one(:_factor, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_one(:amount, Fhir.Money)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          factor: float(),
          id: String.t(),
          type: String.t(),
          _factor: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          amount: Fhir.Money.t(),
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:factor, :id, :type])
    |> cast_embed(:_factor, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:amount, with: &Fhir.Money.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
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
