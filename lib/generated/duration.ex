defmodule Fhir.Duration do
  @moduledoc """
  A length of time.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:comparator, Ecto.Enum, values: [:<, :<=, :>=, :>, :ad])
    field(:id, :string)
    field(:system, :string)
    field(:unit, :string)
    field(:value, :float)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_comparator, Fhir.Element)
    embeds_one(:_system, Fhir.Element)
    embeds_one(:_unit, Fhir.Element)
    embeds_one(:_value, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          comparator: String.t(),
          id: String.t(),
          system: String.t(),
          unit: String.t(),
          value: float(),
          _code: Fhir.Element.t(),
          _comparator: Fhir.Element.t(),
          _system: Fhir.Element.t(),
          _unit: Fhir.Element.t(),
          _value: Fhir.Element.t(),
          extension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :comparator, :id, :system, :unit, :value])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_comparator, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_system, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_unit, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_value, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:system, ~r/^\S*$/)
    |> validate_format(:unit, ~r/^^[\s\S]+$$/)
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
