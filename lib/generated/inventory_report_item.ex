defmodule Fhir.InventoryReportItem do
  @moduledoc """
  A report of inventory or stock items.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:item, Fhir.CodeableReference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:quantity, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          category: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          item: Fhir.CodeableReference.t(),
          modifierExtension: [Fhir.Extension.t()],
          quantity: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:item, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
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
