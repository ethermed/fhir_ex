defmodule Fhir.ContactPoint do
  @moduledoc """
  Details for all kinds of technology mediated contact points for a person or organization, including telephone, email, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:rank, :float)
    field(:system, Ecto.Enum, values: [:phone, :fax, :email, :pager, :url, :sms, :other])
    field(:use, Ecto.Enum, values: [:home, :work, :temp, :old, :mobile])
    field(:value, :string)
    embeds_one(:_rank, Fhir.Element)
    embeds_one(:_system, Fhir.Element)
    embeds_one(:_use, Fhir.Element)
    embeds_one(:_value, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          rank: float(),
          system: String.t(),
          use: String.t(),
          value: String.t(),
          _rank: Fhir.Element.t(),
          _system: Fhir.Element.t(),
          _use: Fhir.Element.t(),
          _value: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          period: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :rank, :system, :use, :value])
    |> cast_embed(:_rank, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_system, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_use, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_value, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:value, ~r/^^[\s\S]+$$/)
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
