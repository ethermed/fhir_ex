defmodule Fhir.Contributor do
  @moduledoc """
  A contributor to the content of a knowledge asset, including authors, editors, reviewers, and endorsers.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:name, :string)
    field(:type, Ecto.Enum, values: [:author, :editor, :reviewer, :endorser])
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:contact, Fhir.ContactDetail)
    embeds_many(:extension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          type: String.t(),
          _name: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          contact: [Fhir.ContactDetail.t()],
          extension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :name, :type])
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
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
