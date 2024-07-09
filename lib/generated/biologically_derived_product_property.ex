defmodule Fhir.BiologicallyDerivedProductProperty do
  @moduledoc """
  This resource reflects an instance of a biologically derived product. A material substance originating from a biological entity intended to be transplanted or infused
  into another (possibly the same) biological entity.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:valueBoolean, :boolean)
    field(:valueInteger, :float)
    field(:valueString, :string)
    embeds_one(:_valueBoolean, Fhir.Element)
    embeds_one(:_valueInteger, Fhir.Element)
    embeds_one(:_valueString, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:valueAttachment, Fhir.Attachment)
    embeds_one(:valueCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:valuePeriod, Fhir.Period)
    embeds_one(:valueQuantity, Fhir.Quantity)
    embeds_one(:valueRange, Fhir.Range)
    embeds_one(:valueRatio, Fhir.Ratio)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          valueBoolean: boolean(),
          valueInteger: float(),
          valueString: String.t(),
          _valueBoolean: Fhir.Element.t(),
          _valueInteger: Fhir.Element.t(),
          _valueString: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t(),
          valueAttachment: Fhir.Attachment.t(),
          valueCodeableConcept: Fhir.CodeableConcept.t(),
          valuePeriod: Fhir.Period.t(),
          valueQuantity: Fhir.Quantity.t(),
          valueRange: Fhir.Range.t(),
          valueRatio: Fhir.Ratio.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :valueBoolean, :valueInteger, :valueString])
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueAttachment, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:valueCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valuePeriod, with: &Fhir.Period.changeset/2)
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
