defmodule Fhir.StructureMapStructure do
  @moduledoc """
  A Map of relationships between 2 structures that can be used to transform data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:alias, :string)
    field(:documentation, :string)
    field(:id, :string)
    field(:mode, :string)
    field(:url, :string)
    embeds_one(:_alias, Fhir.Element)
    embeds_one(:_documentation, Fhir.Element)
    embeds_one(:_mode, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          alias: String.t(),
          documentation: String.t(),
          id: String.t(),
          mode: String.t(),
          url: String.t(),
          _alias: Fhir.Element.t(),
          _documentation: Fhir.Element.t(),
          _mode: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:alias, :documentation, :id, :mode, :url])
    |> cast_embed(:_alias, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_documentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_mode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:alias, ~r/^^[\s\S]+$$/)
    |> validate_format(:documentation, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:mode, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:url, ~r/^\S*$/)
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
