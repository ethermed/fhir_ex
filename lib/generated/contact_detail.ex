defmodule Fhir.ContactDetail do
  @moduledoc """
  Specifies contact information for a person or organization.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:name, :string)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:telecom, Fhir.ContactPoint)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          _name: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          telecom: [Fhir.ContactPoint.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :name])
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:telecom, with: &Fhir.ContactPoint.changeset/2)
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
