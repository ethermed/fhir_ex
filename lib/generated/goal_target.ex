defmodule Fhir.GoalTarget do
  @moduledoc """
  Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:detailBoolean, :boolean)
    field(:detailInteger, :float)
    field(:detailString, :string)
    field(:dueDate, :string)
    field(:id, :string)
    embeds_one(:_detailBoolean, Fhir.Element)
    embeds_one(:_detailInteger, Fhir.Element)
    embeds_one(:_detailString, Fhir.Element)
    embeds_one(:_dueDate, Fhir.Element)
    embeds_one(:detailCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:detailQuantity, Fhir.Quantity)
    embeds_one(:detailRange, Fhir.Range)
    embeds_one(:detailRatio, Fhir.Ratio)
    embeds_one(:dueDuration, Fhir.Duration)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:measure, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          detailBoolean: boolean(),
          detailInteger: float(),
          detailString: String.t(),
          dueDate: String.t(),
          id: String.t(),
          _detailBoolean: Fhir.Element.t(),
          _detailInteger: Fhir.Element.t(),
          _detailString: Fhir.Element.t(),
          _dueDate: Fhir.Element.t(),
          detailCodeableConcept: Fhir.CodeableConcept.t(),
          detailQuantity: Fhir.Quantity.t(),
          detailRange: Fhir.Range.t(),
          detailRatio: Fhir.Ratio.t(),
          dueDuration: Fhir.Duration.t(),
          extension: [Fhir.Extension.t()],
          measure: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:detailBoolean, :detailInteger, :detailString, :dueDate, :id])
    |> cast_embed(:_detailBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_detailInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_detailString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_dueDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:detailCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:detailQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:detailRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:detailRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:dueDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:measure, with: &Fhir.CodeableConcept.changeset/2)
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
