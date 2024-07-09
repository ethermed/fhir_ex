defmodule Fhir.ConceptMapUnmapped do
  @moduledoc """
  A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:display, :string)
    field(:id, :string)
    field(:mode, :string)
    field(:otherMap, :string)
    field(:relationship, :string)
    field(:valueSet, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_display, Fhir.Element)
    embeds_one(:_mode, Fhir.Element)
    embeds_one(:_relationship, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          display: String.t(),
          id: String.t(),
          mode: String.t(),
          otherMap: String.t(),
          relationship: String.t(),
          valueSet: String.t(),
          _code: Fhir.Element.t(),
          _display: Fhir.Element.t(),
          _mode: Fhir.Element.t(),
          _relationship: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :display, :id, :mode, :otherMap, :relationship, :valueSet])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_mode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_relationship, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:display, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:mode, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:otherMap, ~r/^\S*$/)
    |> validate_format(:relationship, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:valueSet, ~r/^\S*$/)
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
