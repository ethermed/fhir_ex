defmodule Fhir.CapabilityStatementEndpoint do
  @moduledoc """
  A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server or Client for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:address, :string)
    field(:id, :string)
    embeds_one(:_address, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:protocol, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          address: String.t(),
          id: String.t(),
          _address: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          protocol: Fhir.Coding.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:address, :id])
    |> cast_embed(:_address, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:protocol, with: &Fhir.Coding.changeset/2)
    |> validate_format(:address, ~r/^\S*$/)
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
