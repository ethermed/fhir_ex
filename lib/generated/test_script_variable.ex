defmodule Fhir.TestScriptVariable do
  @moduledoc """
  A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:defaultValue, :string)
    field(:description, :string)
    field(:expression, :string)
    field(:headerField, :string)
    field(:hint, :string)
    field(:id, :string)
    field(:name, :string)
    field(:path, :string)
    field(:sourceId, :string)
    embeds_one(:_defaultValue, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_expression, Fhir.Element)
    embeds_one(:_headerField, Fhir.Element)
    embeds_one(:_hint, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_path, Fhir.Element)
    embeds_one(:_sourceId, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          defaultValue: String.t(),
          description: String.t(),
          expression: String.t(),
          headerField: String.t(),
          hint: String.t(),
          id: String.t(),
          name: String.t(),
          path: String.t(),
          sourceId: String.t(),
          _defaultValue: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _expression: Fhir.Element.t(),
          _headerField: Fhir.Element.t(),
          _hint: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _path: Fhir.Element.t(),
          _sourceId: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :defaultValue,
      :description,
      :expression,
      :headerField,
      :hint,
      :id,
      :name,
      :path,
      :sourceId
    ])
    |> cast_embed(:_defaultValue, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_expression, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_headerField, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_hint, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_path, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sourceId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:defaultValue, ~r/^^[\s\S]+$$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:expression, ~r/^^[\s\S]+$$/)
    |> validate_format(:headerField, ~r/^^[\s\S]+$$/)
    |> validate_format(:hint, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(:path, ~r/^^[\s\S]+$$/)
    |> validate_format(:sourceId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
