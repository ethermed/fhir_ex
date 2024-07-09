defmodule Fhir.InvoiceLineItem do
  @moduledoc """
  Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:sequence, :float)
    field(:servicedDate, :string)
    embeds_one(:_sequence, Fhir.Element)
    embeds_one(:_servicedDate, Fhir.Element)
    embeds_one(:chargeItemCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:chargeItemReference, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:priceComponent, Fhir.MonetaryComponent)
    embeds_one(:servicedPeriod, Fhir.Period)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          sequence: float(),
          servicedDate: String.t(),
          _sequence: Fhir.Element.t(),
          _servicedDate: Fhir.Element.t(),
          chargeItemCodeableConcept: Fhir.CodeableConcept.t(),
          chargeItemReference: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          priceComponent: [Fhir.MonetaryComponent.t()],
          servicedPeriod: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :sequence, :servicedDate])
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_servicedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:chargeItemCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:chargeItemReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:priceComponent, with: &Fhir.MonetaryComponent.changeset/2)
    |> cast_embed(:servicedPeriod, with: &Fhir.Period.changeset/2)
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
