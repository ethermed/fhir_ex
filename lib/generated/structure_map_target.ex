defmodule Fhir.StructureMapTarget do
  @moduledoc """
  A Map of relationships between 2 structures that can be used to transform data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:context, :string)
    field(:element, :string)
    field(:id, :string)
    field(:listMode, :string)
    field(:listRuleId, :string)
    field(:transform, :string)
    field(:variable, :string)
    embeds_one(:_context, Fhir.Element)
    embeds_one(:_element, Fhir.Element)
    embeds_many(:_listMode, Fhir.Element)
    embeds_one(:_listRuleId, Fhir.Element)
    embeds_one(:_transform, Fhir.Element)
    embeds_one(:_variable, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:parameter, Fhir.StructureMapParameter)
  end

  @type t :: %__MODULE__{
          context: String.t(),
          element: String.t(),
          id: String.t(),
          listMode: String.t(),
          listRuleId: String.t(),
          transform: String.t(),
          variable: String.t(),
          _context: Fhir.Element.t(),
          _element: Fhir.Element.t(),
          _listMode: [Fhir.Element.t()],
          _listRuleId: Fhir.Element.t(),
          _transform: Fhir.Element.t(),
          _variable: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          parameter: [Fhir.StructureMapParameter.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:context, :element, :id, :listMode, :listRuleId, :transform, :variable])
    |> cast_embed(:_context, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_element, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_listMode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_listRuleId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_transform, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_variable, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:parameter, with: &Fhir.StructureMapParameter.changeset/2)
    |> validate_format(:context, ~r/^^[\s\S]+$$/)
    |> validate_format(:element, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:listRuleId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:transform, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:variable, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
