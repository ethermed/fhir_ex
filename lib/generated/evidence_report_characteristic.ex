defmodule Fhir.EvidenceReportCharacteristic do
  @moduledoc """
  The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:exclude, :boolean)
    field(:id, :string)
    field(:valueBoolean, :boolean)
    embeds_one(:_exclude, Fhir.Element)
    embeds_one(:_valueBoolean, Fhir.Element)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
    embeds_one(:valueCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:valueQuantity, Fhir.Quantity)
    embeds_one(:valueRange, Fhir.Range)
    embeds_one(:valueReference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          exclude: boolean(),
          id: String.t(),
          valueBoolean: boolean(),
          _exclude: Fhir.Element.t(),
          _valueBoolean: Fhir.Element.t(),
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          period: Fhir.Period.t(),
          valueCodeableConcept: Fhir.CodeableConcept.t(),
          valueQuantity: Fhir.Quantity.t(),
          valueRange: Fhir.Range.t(),
          valueReference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:exclude, :id, :valueBoolean])
    |> cast_embed(:_exclude, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:valueCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:valueRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:valueReference, with: &Fhir.Reference.changeset/2)
    |> validate_inclusion(:exclude, [true, false])
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
