defmodule Fhir.RequestOrchestrationDynamicValue do
  @moduledoc """
  A set of related requests that can be used to capture intended activities that have inter-dependencies such as "give this medication after that one".
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:path, :string)
    embeds_one(:_path, Fhir.Element)
    embeds_one(:expression, Fhir.Expression)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          path: String.t(),
          _path: Fhir.Element.t(),
          expression: Fhir.Expression.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :path])
    |> cast_embed(:_path, with: &Fhir.Element.changeset/2)
    |> cast_embed(:expression, with: &Fhir.Expression.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:path, ~r/^^[\s\S]+$$/)
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
