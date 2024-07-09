defmodule Fhir.DeviceDefinitionChargeItem do
  @moduledoc """
  The characteristics, operational status and capabilities of a medical-related component of a medical device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:chargeItemCode, Fhir.CodeableReference)
    embeds_one(:count, Fhir.Quantity)
    embeds_one(:effectivePeriod, Fhir.Period)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:useContext, Fhir.UsageContext)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          chargeItemCode: Fhir.CodeableReference.t(),
          count: Fhir.Quantity.t(),
          effectivePeriod: Fhir.Period.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          useContext: [Fhir.UsageContext.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:chargeItemCode, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:count, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:effectivePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:useContext, with: &Fhir.UsageContext.changeset/2)
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
