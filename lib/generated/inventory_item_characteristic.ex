defmodule Fhir.InventoryItemCharacteristic do
  @moduledoc """
  A functional description of an inventory item used in inventory and supply-related workflows.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:valueBoolean, :boolean)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueInteger, :float)
    field(:valueString, :string)
    field(:valueUrl, :string)
    embeds_one(:_valueBoolean, Fhir.Element)
    embeds_one(:_valueDateTime, Fhir.Element)
    embeds_one(:_valueDecimal, Fhir.Element)
    embeds_one(:_valueInteger, Fhir.Element)
    embeds_one(:_valueString, Fhir.Element)
    embeds_one(:_valueUrl, Fhir.Element)
    embeds_one(:characteristicType, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:valueAddress, Fhir.Address)
    embeds_one(:valueAnnotation, Fhir.Annotation)
    embeds_one(:valueCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:valueDuration, Fhir.Duration)
    embeds_one(:valueQuantity, Fhir.Quantity)
    embeds_one(:valueRange, Fhir.Range)
    embeds_one(:valueRatio, Fhir.Ratio)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          valueBoolean: boolean(),
          valueDateTime: String.t(),
          valueDecimal: float(),
          valueInteger: float(),
          valueString: String.t(),
          valueUrl: String.t(),
          _valueBoolean: Fhir.Element.t(),
          _valueDateTime: Fhir.Element.t(),
          _valueDecimal: Fhir.Element.t(),
          _valueInteger: Fhir.Element.t(),
          _valueString: Fhir.Element.t(),
          _valueUrl: Fhir.Element.t(),
          characteristicType: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          valueAddress: Fhir.Address.t(),
          valueAnnotation: Fhir.Annotation.t(),
          valueCodeableConcept: Fhir.CodeableConcept.t(),
          valueDuration: Fhir.Duration.t(),
          valueQuantity: Fhir.Quantity.t(),
          valueRange: Fhir.Range.t(),
          valueRatio: Fhir.Ratio.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :valueBoolean,
      :valueDateTime,
      :valueDecimal,
      :valueInteger,
      :valueString,
      :valueUrl
    ])
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDecimal, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueUrl, with: &Fhir.Element.changeset/2)
    |> cast_embed(:characteristicType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:valueAddress, with: &Fhir.Address.changeset/2)
    |> cast_embed(:valueAnnotation, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:valueCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:valueRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:valueRatio, with: &Fhir.Ratio.changeset/2)
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
