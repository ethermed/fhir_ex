defmodule Fhir.ValueSetSubProperty do
  @moduledoc """
  A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [CodeSystem](codesystem.html) definitions and their use in [coded elements](terminologies.html).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:id, :string)
    field(:valueBoolean, :boolean)
    field(:valueCode, :string)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueInteger, :float)
    field(:valueString, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_valueBoolean, Fhir.Element)
    embeds_one(:_valueCode, Fhir.Element)
    embeds_one(:_valueDateTime, Fhir.Element)
    embeds_one(:_valueDecimal, Fhir.Element)
    embeds_one(:_valueInteger, Fhir.Element)
    embeds_one(:_valueString, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:valueCoding, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          id: String.t(),
          valueBoolean: boolean(),
          valueCode: String.t(),
          valueDateTime: String.t(),
          valueDecimal: float(),
          valueInteger: float(),
          valueString: String.t(),
          _code: Fhir.Element.t(),
          _valueBoolean: Fhir.Element.t(),
          _valueCode: Fhir.Element.t(),
          _valueDateTime: Fhir.Element.t(),
          _valueDecimal: Fhir.Element.t(),
          _valueInteger: Fhir.Element.t(),
          _valueString: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          valueCoding: Fhir.Coding.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :code,
      :id,
      :valueBoolean,
      :valueCode,
      :valueDateTime,
      :valueDecimal,
      :valueInteger,
      :valueString
    ])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueCode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDecimal, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:valueCoding, with: &Fhir.Coding.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
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
