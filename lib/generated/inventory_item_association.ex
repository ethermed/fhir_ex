defmodule Fhir.InventoryItemAssociation do
  @moduledoc """
  A functional description of an inventory item used in inventory and supply-related workflows.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:associationType, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:quantity, Fhir.Ratio)
    embeds_one(:relatedItem, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          associationType: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          quantity: Fhir.Ratio.t(),
          relatedItem: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:associationType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:relatedItem, with: &Fhir.Reference.changeset/2)
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
