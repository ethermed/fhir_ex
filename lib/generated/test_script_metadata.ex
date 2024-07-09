defmodule Fhir.TestScriptMetadata do
  @moduledoc """
  A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:capability, Fhir.TestScriptCapability)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:link, Fhir.TestScriptLink)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          capability: [Fhir.TestScriptCapability.t()],
          extension: [Fhir.Extension.t()],
          link: [Fhir.TestScriptLink.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:capability, with: &Fhir.TestScriptCapability.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:link, with: &Fhir.TestScriptLink.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
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
