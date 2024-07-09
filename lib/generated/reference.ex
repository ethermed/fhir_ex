defmodule Fhir.Reference do
  @moduledoc """
  A reference from one resource to another.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:display, :string)
    field(:id, :string)
    field(:reference, :string)
    field(:type, :string)
    embeds_one(:_display, Fhir.Element)
    embeds_one(:_reference, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
  end

  @type t :: %__MODULE__{
          display: String.t(),
          id: String.t(),
          reference: String.t(),
          type: String.t(),
          _display: Fhir.Element.t(),
          _reference: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:display, :id, :reference, :type])
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_reference, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> validate_format(:display, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:reference, ~r/^^[\s\S]+$$/)
    |> validate_format(:type, ~r/^\S*$/)
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
