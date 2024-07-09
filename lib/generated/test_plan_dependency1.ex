defmodule Fhir.TestPlanDependency1 do
  @moduledoc """
  A plan for executing testing on an artifact or specifications.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:predecessor, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          _description: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          predecessor: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:predecessor, with: &Fhir.Reference.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
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
