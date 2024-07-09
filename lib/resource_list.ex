defmodule Fhir.ResourceList do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  embedded_schema do
    field(:resourceType, :string)
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:resourceType])
    |> validate_required([:resourceType])
    |> maybe_cast_resource(params)
  end

  defp maybe_cast_resource(changeset, params) do
    case get_change(changeset, :resourceType) do
      nil ->
        changeset

      resource_type ->
        module = String.to_existing_atom("Elixir.Fhir.#{resource_type}")
        cast_resource(changeset, module, params)
    end
  end

  defp cast_resource(changeset, module, params) do
    resource_changeset = module.changeset(struct(module), params)
    %{changeset | changes: Map.merge(changeset.changes, resource_changeset.changes)}
  end
end
