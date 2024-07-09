defmodule Fhir.SubstanceDefinitionRelationship do
  @moduledoc """
  The detailed description of a substance, typically at a level beyond what is used for prescribing.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:amountString, :string)
    field(:id, :string)
    field(:isDefining, :boolean)
    embeds_one(:_amountString, Fhir.Element)
    embeds_one(:_isDefining, Fhir.Element)
    embeds_one(:amountQuantity, Fhir.Quantity)
    embeds_one(:amountRatio, Fhir.Ratio)
    embeds_one(:comparator, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:ratioHighLimitAmount, Fhir.Ratio)
    embeds_many(:source, Fhir.Reference)
    embeds_one(:substanceDefinitionCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:substanceDefinitionReference, Fhir.Reference)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          amountString: String.t(),
          id: String.t(),
          isDefining: boolean(),
          _amountString: Fhir.Element.t(),
          _isDefining: Fhir.Element.t(),
          amountQuantity: Fhir.Quantity.t(),
          amountRatio: Fhir.Ratio.t(),
          comparator: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          ratioHighLimitAmount: Fhir.Ratio.t(),
          source: [Fhir.Reference.t()],
          substanceDefinitionCodeableConcept: Fhir.CodeableConcept.t(),
          substanceDefinitionReference: Fhir.Reference.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:amountString, :id, :isDefining])
    |> cast_embed(:_amountString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_isDefining, with: &Fhir.Element.changeset/2)
    |> cast_embed(:amountQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:amountRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:comparator, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:ratioHighLimitAmount, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:source, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:substanceDefinitionCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:substanceDefinitionReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:isDefining, [true, false])
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
