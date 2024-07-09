defmodule Fhir.StructureMapParameter do
  @moduledoc """
  A Map of relationships between 2 structures that can be used to transform data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:valueBoolean, :boolean)
    field(:valueDate, :string)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueId, :string)
    field(:valueInteger, :float)
    field(:valueString, :string)
    field(:valueTime, :string)
    embeds_one(:_valueBoolean, Fhir.Element)
    embeds_one(:_valueDate, Fhir.Element)
    embeds_one(:_valueDateTime, Fhir.Element)
    embeds_one(:_valueDecimal, Fhir.Element)
    embeds_one(:_valueId, Fhir.Element)
    embeds_one(:_valueInteger, Fhir.Element)
    embeds_one(:_valueString, Fhir.Element)
    embeds_one(:_valueTime, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          valueBoolean: boolean(),
          valueDate: String.t(),
          valueDateTime: String.t(),
          valueDecimal: float(),
          valueId: String.t(),
          valueInteger: float(),
          valueString: String.t(),
          valueTime: String.t(),
          _valueBoolean: Fhir.Element.t(),
          _valueDate: Fhir.Element.t(),
          _valueDateTime: Fhir.Element.t(),
          _valueDecimal: Fhir.Element.t(),
          _valueId: Fhir.Element.t(),
          _valueInteger: Fhir.Element.t(),
          _valueString: Fhir.Element.t(),
          _valueTime: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :valueBoolean,
      :valueDate,
      :valueDateTime,
      :valueDecimal,
      :valueId,
      :valueInteger,
      :valueString,
      :valueTime
    ])
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDecimal, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
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
