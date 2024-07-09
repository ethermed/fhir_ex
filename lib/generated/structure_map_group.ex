defmodule Fhir.StructureMapGroup do
  @moduledoc """
  A Map of relationships between 2 structures that can be used to transform data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:documentation, :string)
    field(:extends, :string)
    field(:id, :string)
    field(:name, :string)
    field(:typeMode, :string)
    embeds_one(:_documentation, Fhir.Element)
    embeds_one(:_extends, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_typeMode, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:input, Fhir.StructureMapInput)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:rule, Fhir.StructureMapRule)
  end

  @type t :: %__MODULE__{
          documentation: String.t(),
          extends: String.t(),
          id: String.t(),
          name: String.t(),
          typeMode: String.t(),
          _documentation: Fhir.Element.t(),
          _extends: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _typeMode: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          input: [Fhir.StructureMapInput.t()],
          modifierExtension: [Fhir.Extension.t()],
          rule: [Fhir.StructureMapRule.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:documentation, :extends, :id, :name, :typeMode])
    |> cast_embed(:_documentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_extends, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_typeMode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:input, with: &Fhir.StructureMapInput.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:rule, with: &Fhir.StructureMapRule.changeset/2)
    |> validate_format(:documentation, ~r/^^[\s\S]+$$/)
    |> validate_format(:extends, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:typeMode, ~r/^[^\s]+( [^\s]+)*$/)
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
