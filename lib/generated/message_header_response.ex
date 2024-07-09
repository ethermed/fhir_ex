defmodule Fhir.MessageHeaderResponse do
  @moduledoc """
  The header for a message exchange that is either requesting or responding to an action.  The reference(s) that are the subject of the action as well as other information related to the action are typically transmitted in a bundle in which the MessageHeader resource instance is the first resource in the bundle.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:id, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:details, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          id: String.t(),
          _code: Fhir.Element.t(),
          details: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :id])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:details, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
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
