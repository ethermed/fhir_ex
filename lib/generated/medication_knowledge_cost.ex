defmodule Fhir.MedicationKnowledgeCost do
  @moduledoc """
  Information about a medication that is used to support knowledge.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:source, :string)
    embeds_one(:_source, Fhir.Element)
    embeds_one(:costCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:costMoney, Fhir.Money)
    embeds_many(:effectiveDate, Fhir.Period)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          source: String.t(),
          _source: Fhir.Element.t(),
          costCodeableConcept: Fhir.CodeableConcept.t(),
          costMoney: Fhir.Money.t(),
          effectiveDate: [Fhir.Period.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :source])
    |> cast_embed(:_source, with: &Fhir.Element.changeset/2)
    |> cast_embed(:costCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:costMoney, with: &Fhir.Money.changeset/2)
    |> cast_embed(:effectiveDate, with: &Fhir.Period.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:source, ~r/^^[\s\S]+$$/)
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
