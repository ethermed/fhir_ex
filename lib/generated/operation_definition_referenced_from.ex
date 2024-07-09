defmodule Fhir.OperationDefinitionReferencedFrom do
  @moduledoc """
  A formal computable definition of an operation (on the RESTful interface) or a named query (using the search interaction).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:source, :string)
    field(:sourceId, :string)
    embeds_one(:_source, Fhir.Element)
    embeds_one(:_sourceId, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          source: String.t(),
          sourceId: String.t(),
          _source: Fhir.Element.t(),
          _sourceId: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :source, :sourceId])
    |> cast_embed(:_source, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sourceId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:source, ~r/^^[\s\S]+$$/)
    |> validate_format(:sourceId, ~r/^^[\s\S]+$$/)
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
