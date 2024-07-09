defmodule Fhir.DosageDoseAndRate do
  @moduledoc """
  Indicates how the medication is/was taken or should be taken by the patient.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:doseQuantity, Fhir.Quantity)
    embeds_one(:doseRange, Fhir.Range)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:rateQuantity, Fhir.Quantity)
    embeds_one(:rateRange, Fhir.Range)
    embeds_one(:rateRatio, Fhir.Ratio)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          doseQuantity: Fhir.Quantity.t(),
          doseRange: Fhir.Range.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          rateQuantity: Fhir.Quantity.t(),
          rateRange: Fhir.Range.t(),
          rateRatio: Fhir.Ratio.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:doseQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:doseRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:rateQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:rateRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:rateRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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
