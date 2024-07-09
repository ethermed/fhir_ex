defmodule Fhir.AuditEventDetail do
  @moduledoc """
  A record of an event relevant for purposes such as operations, privacy, security, maintenance, and performance analysis.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:valueBase64Binary, :string)
    field(:valueBoolean, :boolean)
    field(:valueDateTime, :string)
    field(:valueInteger, :float)
    field(:valueString, :string)
    field(:valueTime, :string)
    embeds_one(:_valueBase64Binary, Fhir.Element)
    embeds_one(:_valueBoolean, Fhir.Element)
    embeds_one(:_valueDateTime, Fhir.Element)
    embeds_one(:_valueInteger, Fhir.Element)
    embeds_one(:_valueString, Fhir.Element)
    embeds_one(:_valueTime, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:valueCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:valuePeriod, Fhir.Period)
    embeds_one(:valueQuantity, Fhir.Quantity)
    embeds_one(:valueRange, Fhir.Range)
    embeds_one(:valueRatio, Fhir.Ratio)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          valueBase64Binary: String.t(),
          valueBoolean: boolean(),
          valueDateTime: String.t(),
          valueInteger: float(),
          valueString: String.t(),
          valueTime: String.t(),
          _valueBase64Binary: Fhir.Element.t(),
          _valueBoolean: Fhir.Element.t(),
          _valueDateTime: Fhir.Element.t(),
          _valueInteger: Fhir.Element.t(),
          _valueString: Fhir.Element.t(),
          _valueTime: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t(),
          valueCodeableConcept: Fhir.CodeableConcept.t(),
          valuePeriod: Fhir.Period.t(),
          valueQuantity: Fhir.Quantity.t(),
          valueRange: Fhir.Range.t(),
          valueRatio: Fhir.Ratio.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :valueBase64Binary,
      :valueBoolean,
      :valueDateTime,
      :valueInteger,
      :valueString,
      :valueTime
    ])
    |> cast_embed(:_valueBase64Binary, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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
