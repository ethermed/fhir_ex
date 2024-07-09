defmodule Fhir.StructureMapRule do
  @moduledoc """
  A Map of relationships between 2 structures that can be used to transform data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:documentation, :string)
    field(:id, :string)
    field(:name, :string)
    embeds_one(:_documentation, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:dependent, Fhir.StructureMapDependent)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:rule, Fhir.StructureMapRule)
    embeds_many(:source, Fhir.StructureMapSource)
    embeds_many(:target, Fhir.StructureMapTarget)
  end

  @type t :: %__MODULE__{
          documentation: String.t(),
          id: String.t(),
          name: String.t(),
          _documentation: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          dependent: [Fhir.StructureMapDependent.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          rule: [Fhir.StructureMapRule.t()],
          source: [Fhir.StructureMapSource.t()],
          target: [Fhir.StructureMapTarget.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:documentation, :id, :name])
    |> cast_embed(:_documentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dependent, with: &Fhir.StructureMapDependent.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:rule, with: &Fhir.StructureMapRule.changeset/2)
    |> cast_embed(:source, with: &Fhir.StructureMapSource.changeset/2)
    |> cast_embed(:target, with: &Fhir.StructureMapTarget.changeset/2)
    |> validate_format(:documentation, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
