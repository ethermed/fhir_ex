defmodule Fhir.Identifier do
  @moduledoc """
  An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business identifiers.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:system, :string)
    field(:use, Ecto.Enum, values: [:usual, :official, :temp, :secondary, :old])
    field(:value, :string)
    embeds_one(:_system, Fhir.Element)
    embeds_one(:_use, Fhir.Element)
    embeds_one(:_value, Fhir.Element)
    embeds_one(:assigner, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          system: String.t(),
          use: String.t(),
          value: String.t(),
          _system: Fhir.Element.t(),
          _use: Fhir.Element.t(),
          _value: Fhir.Element.t(),
          assigner: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          period: Fhir.Period.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :system, :use, :value])
    |> cast_embed(:_system, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_use, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_value, with: &Fhir.Element.changeset/2)
    |> cast_embed(:assigner, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:system, ~r/^\S*$/)
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
