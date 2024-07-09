defmodule Fhir.PermissionData do
  @moduledoc """
  Permission resource holds access rules for a given data and context.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:expression, Fhir.Expression)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:period, Fhir.Period)
    embeds_many(:resource, Fhir.PermissionResource)
    embeds_many(:security, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          expression: Fhir.Expression.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          period: [Fhir.Period.t()],
          resource: [Fhir.PermissionResource.t()],
          security: [Fhir.Coding.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:expression, with: &Fhir.Expression.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:resource, with: &Fhir.PermissionResource.changeset/2)
    |> cast_embed(:security, with: &Fhir.Coding.changeset/2)
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
