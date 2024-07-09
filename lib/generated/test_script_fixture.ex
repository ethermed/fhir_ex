defmodule Fhir.TestScriptFixture do
  @moduledoc """
  A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:autocreate, :boolean)
    field(:autodelete, :boolean)
    field(:id, :string)
    embeds_one(:_autocreate, Fhir.Element)
    embeds_one(:_autodelete, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:resource, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          autocreate: boolean(),
          autodelete: boolean(),
          id: String.t(),
          _autocreate: Fhir.Element.t(),
          _autodelete: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          resource: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:autocreate, :autodelete, :id])
    |> cast_embed(:_autocreate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_autodelete, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:resource, with: &Fhir.Reference.changeset/2)
    |> validate_inclusion(:autocreate, [true, false])
    |> validate_inclusion(:autodelete, [true, false])
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
