defmodule Fhir.PermissionRule do
  @moduledoc """
  Permission resource holds access rules for a given data and context.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:type, :string)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:activity, Fhir.PermissionActivity)
    embeds_many(:data, Fhir.PermissionData)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:limit, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          type: String.t(),
          _type: Fhir.Element.t(),
          activity: [Fhir.PermissionActivity.t()],
          data: [Fhir.PermissionData.t()],
          extension: [Fhir.Extension.t()],
          limit: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :type])
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:activity, with: &Fhir.PermissionActivity.changeset/2)
    |> cast_embed(:data, with: &Fhir.PermissionData.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:limit, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
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
