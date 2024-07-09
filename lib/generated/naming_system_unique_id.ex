defmodule Fhir.NamingSystemUniqueId do
  @moduledoc """
  A curated namespace that issues unique symbols within that namespace for the identification of concepts, people, devices, etc.  Represents a "System" used within the Identifier and Coding data types.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:authoritative, :boolean)
    field(:comment, :string)
    field(:id, :string)
    field(:preferred, :boolean)
    field(:type, :string)
    field(:value, :string)
    embeds_one(:_authoritative, Fhir.Element)
    embeds_one(:_comment, Fhir.Element)
    embeds_one(:_preferred, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_one(:_value, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
  end

  @type t :: %__MODULE__{
          authoritative: boolean(),
          comment: String.t(),
          id: String.t(),
          preferred: boolean(),
          type: String.t(),
          value: String.t(),
          _authoritative: Fhir.Element.t(),
          _comment: Fhir.Element.t(),
          _preferred: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          _value: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          period: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:authoritative, :comment, :id, :preferred, :type, :value])
    |> cast_embed(:_authoritative, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_comment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_preferred, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_value, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> validate_inclusion(:authoritative, [true, false])
    |> validate_format(:comment, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:preferred, [true, false])
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
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
