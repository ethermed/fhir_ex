defmodule Fhir.CoverageCostToBeneficiary do
  @moduledoc """
  Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_many(:exception, Fhir.CoverageException)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:network, Fhir.CodeableConcept)
    embeds_one(:term, Fhir.CodeableConcept)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:unit, Fhir.CodeableConcept)
    embeds_one(:valueMoney, Fhir.Money)
    embeds_one(:valueQuantity, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          category: Fhir.CodeableConcept.t(),
          exception: [Fhir.CoverageException.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          network: Fhir.CodeableConcept.t(),
          term: Fhir.CodeableConcept.t(),
          type: Fhir.CodeableConcept.t(),
          unit: Fhir.CodeableConcept.t(),
          valueMoney: Fhir.Money.t(),
          valueQuantity: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:exception, with: &Fhir.CoverageException.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:network, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:term, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:unit, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueMoney, with: &Fhir.Money.changeset/2)
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
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
