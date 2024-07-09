defmodule Fhir.ConceptMapElement do
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
    field(:noMap, :boolean)
    field(:valueSet, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_display, Fhir.Element)
    embeds_one(:_noMap, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:target, Fhir.ConceptMapTarget)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          display: String.t(),
          id: String.t(),
          noMap: boolean(),
          valueSet: String.t(),
          _code: Fhir.Element.t(),
          _display: Fhir.Element.t(),
          _noMap: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          target: [Fhir.ConceptMapTarget.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :display, :id, :noMap, :valueSet])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_noMap, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:target, with: &Fhir.ConceptMapTarget.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:display, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:noMap, [true, false])
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
