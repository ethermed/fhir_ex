defmodule Fhir.SupplyDeliverySuppliedItem do
  @moduledoc """
  Record of delivery of what is supplied.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:itemCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:itemReference, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:quantity, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          itemCodeableConcept: Fhir.CodeableConcept.t(),
          itemReference: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()],
          quantity: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:itemCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:itemReference, with: &Fhir.Reference.changeset/2)
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
