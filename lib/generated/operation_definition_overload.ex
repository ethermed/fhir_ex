defmodule Fhir.OperationDefinitionOverload do
  @moduledoc """
  A formal computable definition of an operation (on the RESTful interface) or a named query (using the search interaction).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:comment, :string)
    field(:id, :string)
    field(:parameterName, :string)
    embeds_one(:_comment, Fhir.Element)
    embeds_many(:_parameterName, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          comment: String.t(),
          id: String.t(),
          parameterName: String.t(),
          _comment: Fhir.Element.t(),
          _parameterName: [Fhir.Element.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:comment, :id, :parameterName])
    |> cast_embed(:_comment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_parameterName, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:comment, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
