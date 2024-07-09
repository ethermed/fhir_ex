defmodule Fhir.StructureMapSource do
  @moduledoc """
  A Map of relationships between 2 structures that can be used to transform data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:check, :string)
    field(:condition, :string)
    field(:context, :string)
    field(:defaultValue, :string)
    field(:element, :string)
    field(:id, :string)
    field(:listMode, :string)
    field(:logMessage, :string)
    field(:max, :string)
    field(:min, :float)
    field(:type, :string)
    field(:variable, :string)
    embeds_one(:_check, Fhir.Element)
    embeds_one(:_condition, Fhir.Element)
    embeds_one(:_context, Fhir.Element)
    embeds_one(:_defaultValue, Fhir.Element)
    embeds_one(:_element, Fhir.Element)
    embeds_one(:_listMode, Fhir.Element)
    embeds_one(:_logMessage, Fhir.Element)
    embeds_one(:_max, Fhir.Element)
    embeds_one(:_min, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_one(:_variable, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          check: String.t(),
          condition: String.t(),
          context: String.t(),
          defaultValue: String.t(),
          element: String.t(),
          id: String.t(),
          listMode: String.t(),
          logMessage: String.t(),
          max: String.t(),
          min: float(),
          type: String.t(),
          variable: String.t(),
          _check: Fhir.Element.t(),
          _condition: Fhir.Element.t(),
          _context: Fhir.Element.t(),
          _defaultValue: Fhir.Element.t(),
          _element: Fhir.Element.t(),
          _listMode: Fhir.Element.t(),
          _logMessage: Fhir.Element.t(),
          _max: Fhir.Element.t(),
          _min: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          _variable: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :check,
      :condition,
      :context,
      :defaultValue,
      :element,
      :id,
      :listMode,
      :logMessage,
      :max,
      :min,
      :type,
      :variable
    ])
    |> cast_embed(:_check, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_condition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_context, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_defaultValue, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_element, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_listMode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_logMessage, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_max, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_min, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_variable, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:check, ~r/^^[\s\S]+$$/)
    |> validate_format(:condition, ~r/^^[\s\S]+$$/)
    |> validate_format(:context, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:defaultValue, ~r/^^[\s\S]+$$/)
    |> validate_format(:element, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:listMode, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:logMessage, ~r/^^[\s\S]+$$/)
    |> validate_format(:max, ~r/^^[\s\S]+$$/)
    |> validate_format(:min, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:type, ~r/^^[\s\S]+$$/)
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
