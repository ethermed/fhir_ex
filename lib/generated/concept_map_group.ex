defmodule Fhir.ConceptMapGroup do
  @moduledoc """
  A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:source, :string)
    field(:target, :string)
    embeds_many(:element, Fhir.ConceptMapElement)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:unmapped, Fhir.ConceptMapUnmapped)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          source: String.t(),
          target: String.t(),
          element: [Fhir.ConceptMapElement.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          unmapped: Fhir.ConceptMapUnmapped.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :source, :target])
    |> cast_embed(:element, with: &Fhir.ConceptMapElement.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:unmapped, with: &Fhir.ConceptMapUnmapped.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:source, ~r/^\S*$/)
    |> validate_format(:target, ~r/^\S*$/)
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
